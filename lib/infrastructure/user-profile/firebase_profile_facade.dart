import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:location/location.dart';

import '../../domain/core/entities/coordinate.dart';
import '../../domain/user-profile/entities/user_profile.dart';
import '../../domain/user-profile/i_user_profile_facade.dart';
import '../../domain/user-profile/profile_failures.dart';
import '../core/dtos/coordinate_dto.dart';
import 'dtos/user_profile_dto.dart';

@LazySingleton(as: IUserProfileFacade)
class FirebaseProfileFacade implements IUserProfileFacade {
  final FirebaseFirestore _firestore;
  final Location _location;

  FirebaseProfileFacade(this._firestore, this._location);
  @override
  Future<Either<ProfileFailure, UserProfile>> getUserProfile(String uid) async {
    try {
      final DocumentSnapshot snapshot =
          await _firestore.collection('users').doc(uid).get();
      return right(
          UserProfileDto.fromJson(snapshot.data() as Map<String, dynamic>)
              .toDomain());
    } catch (e) {
      return left(const ProfileFailure.serverError());
    }
  }

  @override
  Future<Either<ProfileFailure, Unit>> registerName(
      {required String uid, required String name}) async {
    try {
      await _firestore.collection('users').doc(uid).update({'username': name});
      return right(unit);
    } catch (e) {
      return left(const ProfileFailure.serverError());
    }
  }

  @override
  Future<Option<Coordinate>> registerUserCoordinate(
      {required String uid}) async {
    try {
      bool serviceEnabled = await _location.serviceEnabled();
      if (!serviceEnabled) {
        serviceEnabled = await _location.requestService();
        if (!serviceEnabled) {
          return none();
        }
      }

      PermissionStatus permission = await _location.hasPermission();
      if (permission == PermissionStatus.denied) {
        permission = await _location.requestPermission();
        if (permission != PermissionStatus.granted) {
          return none();
        }
      }

      LocationData locationData = await _location.getLocation();
      return some(CoordinateDto(
        latitude: locationData.latitude ?? 0,
        longtude: locationData.longitude ?? 0,
      ).toDomain());
    } catch (e) {
      return none();
    }
  }

  @override
  Future<Either<ProfileFailure, Unit>> savePayment({
    required String uid,
    required String paymentId,
  }) async {
    try {
      await _firestore.collection('users').doc(uid).update({
        'paymentIds': FieldValue.arrayUnion([paymentId])
      });
      return Future.value(right(unit));
    } catch (e) {
      return Future.value(left(const ProfileFailure.serverError()));
    }
  }
}
