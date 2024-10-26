import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

import '../../domain/events/entities/event.dart';
import '../../domain/events/entities/event_detail.dart';
import '../../domain/events/entities/ticket_rate.dart';
import '../../domain/events/event_failures.dart';
import '../../domain/events/i_event_facade.dart';
import 'dtos/event/event_dto.dart';
import 'dtos/ticket_rate/ticket_rate_dto.dart';

@LazySingleton(as: IEventFacade)
class EventFacade implements IEventFacade {
  final FirebaseFirestore _firestore;
  EventFacade(this._firestore);
  @override
  Future<Either<EventFailure, EventDetail>> getEventById(
      {required String eventId}) {
    // TODO: implement getEventById
    throw UnimplementedError();
  }

  @override
  Future<Either<EventFailure, List<Event>>> getEventsByIds(
      {required List<String> eventIds}) {
    // TODO: implement getEventsByIds
    throw UnimplementedError();
  }

  @override
  Future<Either<EventFailure, List<Event>>> getEvents(
      {required int limit, required int skip, String? searchTerm}) {
    final today = DateTime.now().toIso8601String().substring(0, 10);

    var filter = '';
    if (searchTerm != null) {
      filter = '&search=$searchTerm';
    }

    final url =
        'https://channels-service-alpha.fourvenues.com/events?organization_id=Vlyx2sotl000f01gcboem488lpHKEeBk&start_date=$today&limit=$limit&offset=$skip&$filter';
    final res = http.get(Uri.parse(url), headers: {
      'X-Api-Key':
          'sk_test_55xTsKu9uSas0wyCOaSiKygCYeCoKy6GEkIqSKUAoUCUwGiAqUScUYuwuOKUW2GqOUYu2e4Y2AImSKuIsKK6i4CQQig2oM2M6cw2',
    });
    return res.then((value) {
      if (value.statusCode == 200) {
        final eventMaps = jsonDecode(value.body) as Map<String, dynamic>;
        final List<dynamic> data = eventMaps['data'] as List<dynamic>;
        final List<EventDto> eventsDto = data
            .map((eventMap) => EventDto.fromJson(
                {...eventMap as Map<String, dynamic>, 'id': eventMap['_id']}))
            .toList();
        final List<Event> events =
            eventsDto.map((event) => event.toDomain()).toList();
        return right(events);
      } else {
        return left(const EventFailure.serverError());
      }
    });
  }

  @override
  Future<Either<EventFailure, List<TicketRate>>> getEventTickets(
      {required String eventId}) {
    final url =
        'https://channels-service-alpha.fourvenues.com/ticket-rates?event_id=$eventId';
    final res = http.get(Uri.parse(url), headers: {
      'X-Api-Key':
          'sk_test_55xTsKu9uSas0wyCOaSiKygCYeCoKy6GEkIqSKUAoUCUwGiAqUScUYuwuOKUW2GqOUYu2e4Y2AImSKuIsKK6i4CQQig2oM2M6cw2',
    });
    return res.then((value) {
      if (value.statusCode == 200) {
        print('value.body: ${value.body}');
        final ticketRateMaps = jsonDecode(value.body) as Map<String, dynamic>;
        final List<dynamic> data = ticketRateMaps['data'] as List<dynamic>;
        final List<TicketRateDto> ticketRates = data.map((ticketRateMap) {
          var prices = (ticketRateMap['prices'] as List<dynamic>).map((price) {
            var priceMap = price as Map<String, dynamic>;
            return {
              ...priceMap,
              'id': priceMap['_id'],
            };
          }).toList();
          return TicketRateDto.fromJson({
            ...ticketRateMap as Map<String, dynamic>,
            'id': ticketRateMap['_id'],
            'prices': prices,
            'current_price': ticketRateMap['current_price'] != null
                ? {
                    ...ticketRateMap['current_price'] as Map<String, dynamic>,
                    'id': ticketRateMap['current_price']['_id'],
                  }
                : null,
          });
        }).toList();
        final List<TicketRate> ticketRatesDomain =
            ticketRates.map((ticketRate) => ticketRate.toDomain()).toList();
        return right(ticketRatesDomain);
      } else {
        return left(const EventFailure.serverError());
      }
    });
  }

  @override
  Future<Either<EventFailure, Map<String, dynamic>>> getPaymentDetails(
      Map<String, dynamic> requestBody) async {
    const url =
        'https://channels-service-alpha.fourvenues.com/tickets/checkout';
    final res = http.post(Uri.parse(url),
        headers: {
          'X-Api-Key':
              'sk_test_55xTsKu9uSas0wyCOaSiKygCYeCoKy6GEkIqSKUAoUCUwGiAqUScUYuwuOKUW2GqOUYu2e4Y2AImSKuIsKK6i4CQQig2oM2M6cw2',
          'Content-Type': 'application/json',
        },
        body: jsonEncode(requestBody));

    return await res.then((value) {
      if (value.statusCode == 200) {
        final body = jsonDecode(value.body) as Map<String, dynamic>;
        final paymentDetails = body['data'] as Map<String, dynamic>;
        try {
          print('payment details: $paymentDetails');
          // save payment details to fourVenues-orders firebase collection
          _firestore
              .collection('fourVenues-orders')
              .doc(paymentDetails['payment_id'] as String)
              .set(paymentDetails);
        } catch (err) {
          print('ticket details error: $err');
          return left(const EventFailure.serverError());
        }
        return right(paymentDetails);
      } else {
        print('ticket details error: ${value.statusCode}');
        return left(const EventFailure.serverError());
      }
    });
  }

  @override
  Future<Either<EventFailure, List<Map<String, dynamic>>>> getPaidTickets(
      {required List<String> paymentIds}) async {
    final List<Map<String, dynamic>> payments = [];
    print('started fetching paymentIds: $paymentIds');
    for (var paymentId in paymentIds) {
      try {
        final payment = await _firestore
            .collection("fourVenues-orders")
            .doc(paymentId)
            .get();
        if (payment.exists) {
          payments.add(payment.data() as Map<String, dynamic>);
        } else {
          print('payment $paymentId not found');
        }
      } catch (e) {
        print("Error on getting payment $paymentId: $e");
        // return Future.value(left(const EventFailure.serverError()));
      }
    }
    return Future.value(right(payments));
  }
}
