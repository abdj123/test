// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductDtoImpl _$$ProductDtoImplFromJson(Map<String, dynamic> json) =>
    _$ProductDtoImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      capacity: (json['capacity'] as num?)?.toInt(),
      availableQuantity: (json['availableQuantity'] as num?)?.toInt(),
      price: PriceDto.fromJson(json['price'] as Map<String, dynamic>),
      soldQuantity: (json['soldQuantity'] as num?)?.toInt(),
      salesStartDate: json['salesStartDate'] == null
          ? null
          : DateTime.parse(json['salesStartDate'] as String),
      salesEndDate: json['salesEndDate'] == null
          ? null
          : DateTime.parse(json['salesEndDate'] as String),
    );

Map<String, dynamic> _$$ProductDtoImplToJson(_$ProductDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'capacity': instance.capacity,
      'availableQuantity': instance.availableQuantity,
      'price': instance.price,
      'soldQuantity': instance.soldQuantity,
      'salesStartDate': instance.salesStartDate?.toIso8601String(),
      'salesEndDate': instance.salesEndDate?.toIso8601String(),
    };
