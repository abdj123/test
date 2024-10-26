import 'package:dartz/dartz.dart';

import '../value_failure.dart';
import '../value_object.dart';
import '../value_validators.dart';

class Longtude extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  factory Longtude(double value) {
    return Longtude._(validateRange<double>(value, -180, 180));
  }

  const Longtude._(this.value);
}
