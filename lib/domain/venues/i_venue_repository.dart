import 'package:dartz/dartz.dart';

import 'entities/venue_details.dart';
import 'entities/venue.dart';
import 'venue_failures.dart';

abstract class IVenueFacade {
  Future<Either<VenueFailure, List<Venue>>> getVenues(
      {required int limit, required int skip, String? searchTerm});
  Future<Either<VenueFailure, VenueDetails>> getVenueById(
      {required String eventId});
  Future<Either<VenueFailure, List<Venue>>> getVenuesByIds(
      {required List<String> eventIds});
  Future<Either<VenueFailure, List<Venue>>> searchVenues(String query);
}
