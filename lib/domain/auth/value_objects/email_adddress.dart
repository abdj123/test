import 'package:dartz/dartz.dart';

import '../../core/value_object.dart';
import '../value_failures/email_failures.dart';
import '../value_valiators/email_validator.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<EmailFailure, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }

  const EmailAddress._(this.value);
}
