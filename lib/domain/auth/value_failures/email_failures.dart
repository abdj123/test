import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/value_failure.dart';

part 'email_failures.freezed.dart';

@freezed
abstract class EmailFailure extends ValueFailure<String> with _$EmailFailure {
  const factory EmailFailure.emptyEmail({required String failedValue}) =
      EmptyEmail;
  const factory EmailFailure.invalidEmail({required String failedValue}) =
      InvalidEmail;
}
