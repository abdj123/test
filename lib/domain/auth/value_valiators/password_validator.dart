import 'package:dartz/dartz.dart';

import '../value_failures/password_failures.dart';

Either<PasswordFailure, String> validatePassword(String input) {
  if (input.length < 6) {
    return left(PasswordFailure.shortPassword(failedValue: input));
  } else {
    return right(input);
  }
}
