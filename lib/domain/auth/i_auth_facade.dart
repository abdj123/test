import 'package:dartz/dartz.dart';

import 'entities/auth_user.dart';
import 'value_objects/email_adddress.dart';
import 'value_objects/password.dart';

import 'auth_failures.dart';

abstract class IAuthFacade {
  Future<Option<AuthUser>> getSignedInUser();
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> continueWithGoogle();
  Future<Either<AuthFailure, Unit>> continueWithFacebook();
  Future<Either<AuthFailure, Unit>> continueWithApple();
  Future<void> signOut();
  Future<Either<AuthFailure, Unit>> deleteAccount();
}
