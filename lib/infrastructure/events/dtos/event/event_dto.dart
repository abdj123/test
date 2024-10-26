import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/core/entities/coordinate.dart';
import '../../../../domain/core/value_objects/latitude.dart';
import '../../../../domain/core/value_objects/longtude.dart';
import '../../../../domain/core/value_objects/unique_id.dart';
import '../../../../domain/events/entities/event.dart';
import '../../../../domain/venues/entities/venue.dart';
import '../artist/artist_dto.dart';
import '../location/location_dto.dart';
import '../ticket_rate/ticket_rate_dto.dart';

part 'event_dto.g.dart';
part 'event_dto.freezed.dart';

@freezed
abstract class EventDto implements _$EventDto {
  const EventDto._();

  const factory EventDto({
    String? id,
    required String name,
    required String slug,
    String? description,
    required String display_date,
    required String start_date,
    required String end_date,
    required String organization_id,
    required int age,
    required String image_url,
    required String outfit,
    required List<String> ambiences,
    required List<String> music_genres,
    List<ArtistDto>? artists,
    required String location_id,
    required LocationDto location,
    List<TicketRateDto>? ticket_rates,
  }) = _EventDto;

  Event toDomain() => Event(
        id: id == null ? UniqueId() : UniqueId.fromUniqueString(id!),
        name: name,
        coverImageUrl: image_url,
        description: description ?? '',
        startDate: DateTime.parse(start_date),
        endDate: DateTime.parse(end_date),
        venue: Venue(
          id: UniqueId.fromUniqueString(location_id),
          name: location.address ?? location.full_address,
          imageUrl: location.image_url,
          fullAddress: location.full_address,
          coordinate: Coordinate(
            latitude: Latitude(location.latitude),
            longtude: Longtude(location.longitude),
          ),
          city: location.city,
        ),
        summary: description == null
            ? ''
            : description!.length < 30
                ? description!
                : description!.substring(0, 30),
        artists: artists == null
            ? []
            : artists!.map((artist) => artist.toDomain()).toList(),
        isLiked: false,
      );

  factory EventDto.fromJson(Map<String, dynamic> json) =>
      _$EventDtoFromJson(json);
}
