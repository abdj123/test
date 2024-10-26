// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationDtoImpl _$$LocationDtoImplFromJson(Map<String, dynamic> json) =>
    _$LocationDtoImpl(
      id: json['id'] as String?,
      address: json['address'] as String?,
      image_url: json['image_url'] as String?,
      number: json['number'] as String?,
      city: json['city'] as String?,
      country: json['country'] as String?,
      full_address: json['full_address'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      timezone: json['timezone'] as String,
    );

Map<String, dynamic> _$$LocationDtoImplToJson(_$LocationDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'address': instance.address,
      'image_url': instance.image_url,
      'number': instance.number,
      'city': instance.city,
      'country': instance.country,
      'full_address': instance.full_address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'timezone': instance.timezone,
    };
