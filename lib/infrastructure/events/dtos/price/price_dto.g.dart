// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PriceDtoImpl _$$PriceDtoImplFromJson(Map<String, dynamic> json) =>
    _$PriceDtoImpl(
      currency: json['currency'] as String,
      decimalValue: (json['decimalValue'] as num).toDouble(),
      formatted: json['formatted'] as String,
      value: (json['value'] as num).toInt(),
    );

Map<String, dynamic> _$$PriceDtoImplToJson(_$PriceDtoImpl instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'decimalValue': instance.decimalValue,
      'formatted': instance.formatted,
      'value': instance.value,
    };
