import 'package:dartz/dartz.dart';

import 'value_failure.dart';
import 'value_failures/range_failures.dart';

Either<ValueFailure<T>, T> validateRange<T extends num>(T value, T min, T max) {
  if (value < min) {
    return left(RangeFailure.belowTheLimit(failedValue: value, min: min));
  } else if (value > max) {
    return left(RangeFailure.aboveTheLimit(failedValue: value, max: max));
  } else {
    return right(value);
  }
}
