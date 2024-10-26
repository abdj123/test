// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventDetailDtoImpl _$$EventDetailDtoImplFromJson(Map<String, dynamic> json) =>
    _$EventDetailDtoImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      coverImage: json['coverImage'] as String,
      summary: json['summary'] as String?,
      description: json['description'] as String?,
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      isPublished: json['isPublished'] as bool,
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      venue: VenueDto.fromJson(json['venue'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EventDetailDtoImplToJson(
        _$EventDetailDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'coverImage': instance.coverImage,
      'summary': instance.summary,
      'description': instance.description,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'isPublished': instance.isPublished,
      'products': instance.products,
      'venue': instance.venue,
    };
