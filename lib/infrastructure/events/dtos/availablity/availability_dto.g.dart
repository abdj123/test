// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'availability_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AvailabilityDtoImpl _$$AvailabilityDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$AvailabilityDtoImpl(
      sold: (json['sold'] as num).toInt(),
      available: (json['available'] as num).toInt(),
    );

Map<String, dynamic> _$$AvailabilityDtoImplToJson(
        _$AvailabilityDtoImpl instance) =>
    <String, dynamic>{
      'sold': instance.sold,
      'available': instance.available,
    };
