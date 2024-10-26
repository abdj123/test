import 'package:dartz/dartz.dart';

import '../value_failures/email_failures.dart';

Either<EmailFailure, String> validateEmailAddress(String input) {
  const emailRegex = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
  if (input.isEmpty) {
    return left(EmailFailure.emptyEmail(failedValue: input));
  } else if (!RegExp(emailRegex).hasMatch(input)) {
    return left(EmailFailure.invalidEmail(failedValue: input));
  } else {
    return right(input);
  }
}
