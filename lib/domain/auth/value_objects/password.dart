import 'package:dartz/dartz.dart';

import '../../core/value_object.dart';
import '../value_failures/password_failures.dart';
import '../value_valiators/password_validator.dart';

class Password extends ValueObject<String> {
  @override
  final Either<PasswordFailure, String> value;

  factory Password(String input) {
    return Password._(
      validatePassword(input),
    );
  }

  const Password._(this.value);
}
