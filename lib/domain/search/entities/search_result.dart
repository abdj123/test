import 'package:freezed_annotation/freezed_annotation.dart';

import '../../events/entities/event.dart';
import '../../venues/entities/venue.dart';

part 'search_result.freezed.dart';

@freezed
abstract class SearchResult with _$SearchResult {
  const factory SearchResult({
    required List<Venue> venues,
    required List<Event> events,
  }) = _SearchResult;
}
