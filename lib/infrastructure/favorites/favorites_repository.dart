import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/favorites/entities/favorites.dart';
import '../../domain/favorites/favorite_failure.dart';
import '../../domain/favorites/i_favorites_repository.dart';

@LazySingleton(as: IFavoritesRepository)
class FavoritesRepository extends IFavoritesRepository {
  final FirebaseFirestore _firestore;
  FavoritesRepository(this._firestore);

  @override
  Future<Either<FavoriteFailure, Unit>> addEventToFavorites(
      {required String uid, required String eventId}) async {
    try {
      await _firestore.collection('users').doc(uid).update({
        'likedEvents': FieldValue.arrayUnion([eventId])
      });
      return right(unit);
    } catch (e) {
      return left(const FavoriteFailure.serverError());
    }
  }

  @override
  Future<Either<FavoriteFailure, Unit>> addVenueToFavorites(
      {required String uid, required String venueId}) async {
    try {
      await _firestore.collection('users').doc(uid).update({
        'likedVenues': FieldValue.arrayUnion([venueId])
      });
      return right(unit);
    } catch (e) {
      return left(const FavoriteFailure.serverError());
    }
  }

  @override
  Future<Either<FavoriteFailure, Favorites>> getFavorites(String uid) async {
    try {
      final DocumentSnapshot snapshot =
          await _firestore.collection('users').doc(uid).get();
      final data = snapshot.data() as Map<String, dynamic>;
      return right(Favorites(
        eventIds: data.containsKey('likedEvents')
            ? List<String>.from(data['likedEvents'])
            : [],
        venueIds: data.containsKey('likedVenues')
            ? List<String>.from(data['likedVenues'])
            : [],
      ));
    } catch (e) {
      return left(const FavoriteFailure.serverError());
    }
  }

  @override
  Future<Either<FavoriteFailure, Unit>> removeEventFromFavorites(
      {required String uid, required String eventId}) async {
    try {
      await _firestore.collection('users').doc(uid).update({
        'likedEvents': FieldValue.arrayRemove([eventId])
      });
      return right(unit);
    } catch (e) {
      return left(const FavoriteFailure.serverError());
    }
  }

  @override
  Future<Either<FavoriteFailure, Unit>> removeVenueFromFavorites(
      {required String uid, required String venueId}) async {
    try {
      await _firestore.collection('users').doc(uid).update({
        'likedVenues': FieldValue.arrayRemove([venueId])
      });
      return right(unit);
    } catch (e) {
      return left(const FavoriteFailure.serverError());
    }
  }
}
