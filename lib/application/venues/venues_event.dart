part of 'venues_bloc.dart';

@freezed
class VenuesEvent with _$VenuesEvent {
  const factory VenuesEvent.started() = _Started;

  const factory VenuesEvent.getVenues({required int limit, required int skip}) =
      GetVenues;
}
