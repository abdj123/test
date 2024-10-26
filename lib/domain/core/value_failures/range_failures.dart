import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../../core/value_failure.dart';

part 'range_failures.freezed.dart';

@freezed
abstract class RangeFailure<T> extends ValueFailure<T> with _$RangeFailure {
  const factory RangeFailure.belowTheLimit(
      {required T failedValue, required T min}) = BelowTheLimit;
  const factory RangeFailure.aboveTheLimit(
      {required T failedValue, required T max}) = AboveTheLimit;
}
