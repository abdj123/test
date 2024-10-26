import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/value_objects/unique_id.dart';

part 'auth_user.freezed.dart';

@freezed
abstract class AuthUser with _$AuthUser {
  const factory AuthUser({
    required UniqueId uid,
  }) = _AuthUser;
}
