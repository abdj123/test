// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supplement_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SupplementDtoImpl _$$SupplementDtoImplFromJson(Map<String, dynamic> json) =>
    _$SupplementDtoImpl(
      id: json['id'] as String?,
      label: json['label'] as String,
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$$SupplementDtoImplToJson(_$SupplementDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'price': instance.price,
    };
