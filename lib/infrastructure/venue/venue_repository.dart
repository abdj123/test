import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import 'package:ticket_tree_client/infrastructure/venue/dtos/venue_overview_dto.dart';

import '../../domain/venues/entities/venue.dart';
import '../../domain/venues/entities/venue_details.dart';
import '../../domain/venues/i_venue_repository.dart';
import '../../domain/venues/venue_failures.dart';

@LazySingleton(as: IVenueFacade)
class VenueRepository implements IVenueFacade {
  @override
  Future<Either<VenueFailure, List<Venue>>> searchVenues(String query) {
    // TODO: implement searchVenues
    throw UnimplementedError();
  }

  @override
  Future<Either<VenueFailure, VenueDetails>> getVenueById(
      {required String eventId}) {
    // TODO: implement getVenueById
    throw UnimplementedError();
  }

  @override
  Future<Either<VenueFailure, List<Venue>>> getVenues(
      {required int limit, required int skip, String? searchTerm}) {
    final url =
        'https://channels-service-alpha.fourvenues.com/locations?organization_id=Vlyx2sotl000f01gcboem488lpHKEeBk&limit=$limit&offset=$skip';
    final res = http.get(Uri.parse(url), headers: {
      'X-Api-Key':
          'sk_test_55xTsKu9uSas0wyCOaSiKygCYeCoKy6GEkIqSKUAoUCUwGiAqUScUYuwuOKUW2GqOUYu2e4Y2AImSKuIsKK6i4CQQig2oM2M6cw2',
    });
    return res.then((value) {
      if (value.statusCode == 200) {
        print('Venues: ${value.body}');
        final venueMaps = jsonDecode(value.body) as Map<String, dynamic>;
        final List<dynamic> data = venueMaps['data'] as List<dynamic>;
        final List<VenueDto> venuesDto = data
            .map((venueMap) => VenueDto.fromJson(
                {...venueMap as Map<String, dynamic>, 'id': venueMap['_id']}))
            .toList();
        final List<Venue> venues =
            venuesDto.map((venue) => venue.toDomain()).toList();
        return right(venues);
      } else {
        return left(const VenueFailure.serverError());
      }
    });
  }

  @override
  Future<Either<VenueFailure, List<Venue>>> getVenuesByIds(
      {required List<String> eventIds}) {
    // TODO: implement getVenuesByIds
    throw UnimplementedError();
  }
}
