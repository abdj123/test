import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth/auth_failures.dart';
import '../../domain/auth/entities/auth_user.dart';
import '../../domain/auth/value_objects/email_adddress.dart';
import '../../domain/auth/value_objects/password.dart';
import '../../domain/auth/i_auth_facade.dart';
import 'firebase_user_mapper.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final FacebookAuth _facebookAuth;
  final FirebaseFirestore _firestore;

  FirebaseAuthFacade(
    this._firebaseAuth,
    this._googleSignIn,
    this._facebookAuth,
    this._firestore,
  );

  @override
  Future<Option<AuthUser>> getSignedInUser() async {
    print('The user is present: ${_firebaseAuth.currentUser != null}');
    return optionOf(_firebaseAuth.currentUser?.toDomain());
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    try {
      final UserCredential credential =
          await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddress.getOrCrash(),
        password: password.getOrCrash(),
      );
      final String uid = credential.user!.uid;
      await _firestore
          .collection('users')
          .doc(uid)
          .set({'uid': uid, 'email': emailAddress.getOrCrash()});
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    } catch (e) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddress.getOrCrash(),
        password: password.getOrCrash(),
      );
      print('Signed in');
      return right(unit);
    } on FirebaseAuthException catch (e) {
      print('FirebaseAuthException: ${e.code}');
      if (e.code == 'invalid-credential' || e.code == 'user-not-found') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else if (e.code == 'user-disabled') {
        return left(const AuthFailure.userDisabled());
      } else {
        return left(const AuthFailure.serverError());
      }
    } catch (e) {
      print('Error: $e');
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> continueWithGoogle() async {
    try {
      GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      GoogleSignInAuthentication googleAuth = await googleUser.authentication;
      AuthCredential authCredential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final UserCredential credential =
          await _firebaseAuth.signInWithCredential(authCredential);
      final String uid = credential.user!.uid;
      final DocumentSnapshot snapshot =
          await _firestore.collection('users').doc(uid).get();
      if (!snapshot.exists) {
        await _firestore.collection('users').doc(uid).set({
          'uid': uid,
          'email': credential.user!.email,
        });
      }
      return right(unit);
    } catch (err) {
      print('Continue With Google Error: $err');
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> continueWithFacebook() async {
    try {
      final LoginResult loginResult = await _facebookAuth.login();
      if (loginResult.accessToken == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      final OAuthCredential facebookAuthCredential =
          FacebookAuthProvider.credential(loginResult.accessToken!.tokenString);
      final UserCredential credential =
          await _firebaseAuth.signInWithCredential(facebookAuthCredential);
      final String uid = credential.user!.uid;
      final DocumentSnapshot snapshot =
          await _firestore.collection('users').doc(uid).get();
      if (!snapshot.exists) {
        await _firestore.collection('users').doc(uid).set({
          'uid': uid,
          'email': credential.user!.email ?? '',
        });
      }
      return right(unit);
    } on FirebaseAuthException catch (err) {
      if (err.code == 'account-exists-with-different-credential') {
        return left(const AuthFailure.accountExistsWithDifferentCredential());
      }
      return left(const AuthFailure.serverError());
    } catch (err) {
      print('Continue With Facebook Error: $err');
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> continueWithApple() async {
    try {
      final appleCredential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
        webAuthenticationOptions: WebAuthenticationOptions(
          clientId: 'com.example.ticketTreeClient.app',
          redirectUri: Uri.parse(
            'https://ticktree-dev.firebaseapp.com/__/auth/handler',
          ),
        ),
      );

      final oAuthProvider = OAuthProvider('apple.com');
      final credential = oAuthProvider.credential(
        idToken: appleCredential.identityToken,
        accessToken: appleCredential.authorizationCode,
      );

      final userCredential =
          await _firebaseAuth.signInWithCredential(credential);
      final firebaseUser = userCredential.user!;

      if (appleCredential.givenName != null &&
          appleCredential.familyName != null) {
        final displayName =
            '${appleCredential.givenName} ${appleCredential.familyName}';
        await firebaseUser.updateDisplayName(displayName);
      }

      final String uid = userCredential.user!.uid;
      final DocumentSnapshot snapshot =
          await _firestore.collection('users').doc(uid).get();
      if (!snapshot.exists) {
        await _firestore
            .collection('users')
            .doc(uid)
            .set({'uid': uid, 'email': firebaseUser.email});
      }

      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'account-exists-with-different-credential') {
        return left(const AuthFailure.accountExistsWithDifferentCredential());
      }
      return left(const AuthFailure.serverError());
    } catch (error) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> signOut() => Future.wait([
        _firebaseAuth.signOut(),
        _googleSignIn.signOut(),
        _facebookAuth.logOut(),
      ]);

  @override
  Future<Either<AuthFailure, Unit>> deleteAccount() async {
    User? user = FirebaseAuth.instance.currentUser;

    if (user == null) {
      return left(const AuthFailure.serverError());
    }

    try {
      await _deleteUserFirestoreData(user.uid);
      await user.delete();
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == "requires-recent-login") {
        final reauthResult = await _reauthenticateAndDelete(user);
        return reauthResult.fold(
          (failure) => left(failure),
          (_) => right(unit),
        );
      } else {
        return left(const AuthFailure.serverError());
      }
    } catch (e) {
      return left(const AuthFailure.serverError());
    }
  }

  // helper functions for account deletion.

  Future<void> _deleteUserFirestoreData(String uid) async {
    try {
      await _firestore.collection('users').doc(uid).delete();
    } catch (e) {
      throw Exception('Failed to delete Firestore user data: $e');
    }
  }

  Future<Either<AuthFailure, Unit>> _reauthenticateAndDelete(User user) async {
    try {
      final providerData = user.providerData.first;

      if (providerData.providerId == AppleAuthProvider().providerId) {
        await user.reauthenticateWithProvider(AppleAuthProvider());
      } else if (providerData.providerId == GoogleAuthProvider().providerId) {
        await user.reauthenticateWithProvider(GoogleAuthProvider());
      } else if (providerData.providerId == FacebookAuthProvider().providerId) {
        await user.reauthenticateWithProvider(FacebookAuthProvider());
      }

      await _deleteUserFirestoreData(user.uid);
      await user.delete();
      return right(unit);
    } catch (e) {
      return left(const AuthFailure.serverError());
    }
  }
}
