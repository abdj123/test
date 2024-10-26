import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../domain/events/entities/price.dart';

part 'price_dto.freezed.dart';
part 'price_dto.g.dart';

@freezed
abstract class PriceDto implements _$PriceDto {
  const PriceDto._();

  const factory PriceDto({
    required String currency,
    required double decimalValue,
    required String formatted,
    required int value,
  }) = _PriceDto;

  factory PriceDto.fromDomain(Price price) {
    return PriceDto(
        currency: price.currency,
        decimalValue: price.decimalValue,
        formatted: price.formatted,
        value: price.value);
  }

  Price toDomain() => Price(
      currency: currency,
      decimalValue: decimalValue,
      formatted: formatted,
      value: value);

  factory PriceDto.fromJson(Map<String, dynamic> json) =>
      _$PriceDtoFromJson(json);
}
