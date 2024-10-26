// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warranty_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WarrantyDtoImpl _$$WarrantyDtoImplFromJson(Map<String, dynamic> json) =>
    _$WarrantyDtoImpl(
      enabled: json['enabled'] as bool?,
      percentage: (json['percentage'] as num?)?.toInt(),
      hours: (json['hours'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$WarrantyDtoImplToJson(_$WarrantyDtoImpl instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
      'percentage': instance.percentage,
      'hours': instance.hours,
    };
