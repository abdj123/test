part of 'venues_bloc.dart';

@freezed
class VenuesState with _$VenuesState {
  const factory VenuesState.initial() = _Initial;

  const factory VenuesState.loading() = _Loading;
  const factory VenuesState.loaded(List<Venue> venues) = _Loaded;
  const factory VenuesState.error(String message) = _Error;
}
