// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_ticket_rate_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PriceTicketRateDtoImpl _$$PriceTicketRateDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$PriceTicketRateDtoImpl(
      id: json['id'] as String?,
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      valid_until: json['valid_until'] as String,
      quantity: (json['quantity'] as num).toInt(),
      fee_type: json['fee_type'] as String,
      fee_quantity: (json['fee_quantity'] as num).toInt(),
      includes: json['includes'] as String,
      additional_info: json['additional_info'] as String,
    );

Map<String, dynamic> _$$PriceTicketRateDtoImplToJson(
        _$PriceTicketRateDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'valid_until': instance.valid_until,
      'quantity': instance.quantity,
      'fee_type': instance.fee_type,
      'fee_quantity': instance.fee_quantity,
      'includes': instance.includes,
      'additional_info': instance.additional_info,
    };
