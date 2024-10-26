import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/value_objects/unique_id.dart';
import '../../venues/entities/venue.dart';
import 'artist.dart';

part 'event.freezed.dart';

@freezed
abstract class Event with _$Event {
  const factory Event({
    required UniqueId id,
    required String name,
    required String coverImageUrl,
    required String summary,
    required String description,
    required DateTime startDate,
    required DateTime endDate,
    required List<Artist> artists,
    required Venue venue,
    required bool isLiked,
  }) = _Event;
}
