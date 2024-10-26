import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/entities/coordinate.dart';
import '../../core/value_objects/unique_id.dart';

part 'venue_details.freezed.dart';

@freezed
abstract class VenueDetails with _$VenueDetails {
  const factory VenueDetails({
    required UniqueId id,
    required String name,
    required String imageUrl,
    String? description,
    String? googlePlaceId,
    Coordinate? coordinate,
    required String address,
    required String city,
    required List<String> events,
    required int likes,
  }) = _VenueDetails;
}
