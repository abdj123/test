import 'package:dartz/dartz.dart';

import '../core/entities/coordinate.dart';
import 'entities/user_profile.dart';
import 'profile_failures.dart';

abstract class IUserProfileFacade {
  Future<Option<Coordinate>> registerUserCoordinate({required String uid});
  Future<Either<ProfileFailure, Unit>> registerName({
    required String uid,
    required String name,
  });
  Future<Either<ProfileFailure, UserProfile>> getUserProfile(String uid);
  Future<Either<ProfileFailure, Unit>> savePayment({
    required String uid,
    required String paymentId,
  });
}
