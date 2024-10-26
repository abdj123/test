import 'package:dartz/dartz.dart';
import 'package:ticket_tree_client/domain/events/entities/ticket_rate.dart';

import 'entities/event.dart';
import 'entities/event_detail.dart';
import 'event_failures.dart';

abstract class IEventFacade {
  Future<Either<EventFailure, List<Event>>> getEvents(
      {required int limit, required int skip, String? searchTerm});
  Future<Either<EventFailure, EventDetail>> getEventById(
      {required String eventId});
  Future<Either<EventFailure, List<TicketRate>>> getEventTickets(
      {required String eventId});
  Future<Either<EventFailure, List<Event>>> getEventsByIds(
      {required List<String> eventIds});
  Future<Either<EventFailure, Map<String, dynamic>>> getPaymentDetails(
      Map<String, dynamic> requestBody);
  Future<Either<EventFailure, List<Map<String, dynamic>>>> getPaidTickets({
    required List<String> paymentIds,
  });
}
