import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/core/value_objects/unique_id.dart';
import '../../../../domain/events/entities/event_detail.dart';
import '../../../venue/dtos/venue_overview_dto.dart';
import '../product/product_dto.dart';

part 'event_detail_dto.freezed.dart';
part 'event_detail_dto.g.dart';

@freezed
abstract class EventDetailDto implements _$EventDetailDto {
  const EventDetailDto._();

  const factory EventDetailDto({
    required String id,
    required String name,
    required String coverImage,
    required String? summary,
    required String? description,
    required DateTime? startDate,
    required DateTime? endDate,
    required bool isPublished,
    required List<ProductDto> products,
    required VenueDto venue,
  }) = _EventDetailDto;

  EventDetail toDomain() => EventDetail(
        id: UniqueId.fromUniqueString(id),
        name: name,
        coverImage: coverImage,
        summary: summary,
        description: description,
        startDate: startDate,
        endDate: endDate,
        isPublished: isPublished,
        products: products.map((p) => p.toDomain()).toList(),
        venue: venue.toDomain(),
      );

  factory EventDetailDto.fromJson(Map<String, dynamic> json) =>
      _$EventDetailDtoFromJson(json);
}
