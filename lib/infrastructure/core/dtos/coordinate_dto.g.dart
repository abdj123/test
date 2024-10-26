// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coordinate_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoordinateDtoImpl _$$CoordinateDtoImplFromJson(Map<String, dynamic> json) =>
    _$CoordinateDtoImpl(
      latitude: (json['latitude'] as num).toDouble(),
      longtude: (json['longtude'] as num).toDouble(),
    );

Map<String, dynamic> _$$CoordinateDtoImplToJson(_$CoordinateDtoImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longtude': instance.longtude,
    };
