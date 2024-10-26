import 'package:freezed_annotation/freezed_annotation.dart';

part 'price.freezed.dart';

@freezed
abstract class Price with _$Price {
  const factory Price({
    required String currency,
    required double decimalValue,
    required String formatted,
    required int value,
  }) = _Price;
}
