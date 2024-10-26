import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/entities/coordinate.dart';
import '../../core/value_objects/unique_id.dart';

part 'venue.freezed.dart';

@freezed
abstract class Venue with _$Venue {
  const factory Venue({
    required UniqueId id,
    required String name,
    required String? imageUrl,
    required String fullAddress,
    required Coordinate? coordinate,
    required String? city,
  }) = _Venue;

  factory Venue.empty() => Venue(
        id: UniqueId(),
        name: '',
        imageUrl: '',
        fullAddress: '',
        coordinate: null,
        city: '',
      );
}
