// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileDtoImpl _$$UserProfileDtoImplFromJson(Map<String, dynamic> json) =>
    _$UserProfileDtoImpl(
      uid: json['uid'] as String,
      username: json['username'] as String?,
      email: json['email'] as String,
      imagePath: json['imagePath'] as String?,
      dateOfBirth: json['dateOfBirth'] == null
          ? null
          : DateTime.parse(json['dateOfBirth'] as String),
      coordinate: json['coordinate'] == null
          ? null
          : CoordinateDto.fromJson(json['coordinate'] as Map<String, dynamic>),
      city: json['city'] as String?,
      paymentIds: (json['paymentIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$UserProfileDtoImplToJson(
        _$UserProfileDtoImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'username': instance.username,
      'email': instance.email,
      'imagePath': instance.imagePath,
      'dateOfBirth': instance.dateOfBirth?.toIso8601String(),
      'coordinate': instance.coordinate,
      'city': instance.city,
      'paymentIds': instance.paymentIds,
    };
