import 'package:freezed_annotation/freezed_annotation.dart';

part 'venue_failures.freezed.dart';

@freezed
abstract class VenueFailure with _$VenueFailure {
  const factory VenueFailure.serverError() = ServerError;
  const factory VenueFailure.venueNotFound() = VenueNotFound;
}
