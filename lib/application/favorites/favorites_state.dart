part of 'favorites_bloc.dart';

@freezed
class FavoritesState with _$FavoritesState {
  const factory FavoritesState.initial() = _Initial;

  const factory FavoritesState.loading() = _Loading;
  const factory FavoritesState.loaded(Favorites favorites) = _Loaded;
  const factory FavoritesState.error(String message) = _Error;
}
