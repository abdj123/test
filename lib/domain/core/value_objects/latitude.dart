import 'package:dartz/dartz.dart';

import '../value_failure.dart';
import '../value_object.dart';
import '../value_validators.dart';

class Latitude extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  factory Latitude(double value) {
    return Latitude._(validateRange<double>(value, -90, 90));
  }

  const Latitude._(this.value);
}
