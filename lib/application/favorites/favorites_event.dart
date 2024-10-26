part of 'favorites_bloc.dart';

@freezed
class FavoritesEvent with _$FavoritesEvent {
  const factory FavoritesEvent.started() = _Started;

  const factory FavoritesEvent.getFavorites(String uid) = _GetFavorites;
  const factory FavoritesEvent.addEventToFavorites(String uid, String eventId) =
      _AddEventToFavorites;
  const factory FavoritesEvent.removeEventFromFavorites(
      String uid, String eventId) = _RemoveEventFromFavorites;
  const factory FavoritesEvent.addVenueToFavorites(String uid, String venueId) =
      _AddVenueToFavorites;
  const factory FavoritesEvent.removeVenueFromFavorites(
      String uid, String venueId) = _RemoveVenueFromFavorites;
}
