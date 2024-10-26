import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/value_failure.dart';

part 'password_failures.freezed.dart';

@freezed
abstract class PasswordFailure extends ValueFailure<String>
    with _$PasswordFailure {
  const factory PasswordFailure.emptyPassword({required String failedValue}) =
      EmptyPassword;
  const factory PasswordFailure.shortPassword({required String failedValue}) =
      ShortPassword;
}
