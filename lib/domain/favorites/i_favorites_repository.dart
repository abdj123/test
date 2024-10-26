import 'package:dartz/dartz.dart';

import 'entities/favorites.dart';
import 'favorite_failure.dart';

abstract class IFavoritesRepository {
  Future<Either<FavoriteFailure, Favorites>> getFavorites(String uid);
  Future<Either<FavoriteFailure, Unit>> addEventToFavorites({
    required String uid,
    required String eventId,
  });
  Future<Either<FavoriteFailure, Unit>> removeEventFromFavorites({
    required String uid,
    required String eventId,
  });
  Future<Either<FavoriteFailure, Unit>> addVenueToFavorites({
    required String uid,
    required String venueId,
  });
  Future<Either<FavoriteFailure, Unit>> removeVenueFromFavorites({
    required String uid,
    required String venueId,
  });
}
