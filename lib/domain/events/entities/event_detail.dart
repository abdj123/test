import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/value_objects/unique_id.dart';
import '../../venues/entities/venue.dart';
import 'product.dart';

part 'event_detail.freezed.dart';

@freezed
abstract class EventDetail with _$EventDetail {
  const factory EventDetail({
    required UniqueId id,
    required String name,
    required String coverImage,
    required String? summary,
    required String? description,
    required DateTime? startDate,
    required DateTime? endDate,
    required bool isPublished,
    required List<Product> products,
    required Venue venue,
  }) = _EventDetail;
}
