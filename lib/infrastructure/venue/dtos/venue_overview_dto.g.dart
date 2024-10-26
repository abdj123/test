// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'venue_overview_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VenueDtoImpl _$$VenueDtoImplFromJson(Map<String, dynamic> json) =>
    _$VenueDtoImpl(
      unic_id: json['unic_id'] as String?,
      location_id: json['location_id'] as String,
      name: json['name'] as String,
      address: json['address'] as String?,
      imageUrl: json['imageUrl'] as String?,
      fullAddress: json['fullAddress'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      city: json['city'] as String?,
      country: json['country'] as String?,
      timezone: json['timezone'] as String?,
    );

Map<String, dynamic> _$$VenueDtoImplToJson(_$VenueDtoImpl instance) =>
    <String, dynamic>{
      'unic_id': instance.unic_id,
      'location_id': instance.location_id,
      'name': instance.name,
      'address': instance.address,
      'imageUrl': instance.imageUrl,
      'fullAddress': instance.fullAddress,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'city': instance.city,
      'country': instance.country,
      'timezone': instance.timezone,
    };
