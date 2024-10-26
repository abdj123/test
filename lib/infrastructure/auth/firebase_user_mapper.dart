import 'package:firebase_auth/firebase_auth.dart';

import '../../domain/auth/entities/auth_user.dart';
import '../../domain/core/value_objects/unique_id.dart';

extension FirebaseUserMapper on User {
  AuthUser toDomain() {
    return AuthUser(uid: UniqueId.fromUniqueString(uid));
  }
}
