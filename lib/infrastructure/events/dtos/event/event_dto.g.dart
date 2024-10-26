// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventDtoImpl _$$EventDtoImplFromJson(Map<String, dynamic> json) =>
    _$EventDtoImpl(
      id: json['id'] as String?,
      name: json['name'] as String,
      slug: json['slug'] as String,
      description: json['description'] as String?,
      display_date: json['display_date'] as String,
      start_date: json['start_date'] as String,
      end_date: json['end_date'] as String,
      organization_id: json['organization_id'] as String,
      age: (json['age'] as num).toInt(),
      image_url: json['image_url'] as String,
      outfit: json['outfit'] as String,
      ambiences:
          (json['ambiences'] as List<dynamic>).map((e) => e as String).toList(),
      music_genres: (json['music_genres'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      artists: (json['artists'] as List<dynamic>?)
          ?.map((e) => ArtistDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      location_id: json['location_id'] as String,
      location: LocationDto.fromJson(json['location'] as Map<String, dynamic>),
      ticket_rates: (json['ticket_rates'] as List<dynamic>?)
          ?.map((e) => TicketRateDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$EventDtoImplToJson(_$EventDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'description': instance.description,
      'display_date': instance.display_date,
      'start_date': instance.start_date,
      'end_date': instance.end_date,
      'organization_id': instance.organization_id,
      'age': instance.age,
      'image_url': instance.image_url,
      'outfit': instance.outfit,
      'ambiences': instance.ambiences,
      'music_genres': instance.music_genres,
      'artists': instance.artists,
      'location_id': instance.location_id,
      'location': instance.location,
      'ticket_rates': instance.ticket_rates,
    };
