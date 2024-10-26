import 'package:freezed_annotation/freezed_annotation.dart';

import 'event.dart';

part 'categorized_events.freezed.dart';

@freezed
abstract class CategorizedEvents with _$CategorizedEvents {
  const factory CategorizedEvents({
    required List<Event> todayEvents,
    required List<Event> thisWeekEvents,
    required List<Event> upcomingEvents,
    required List<Event> pastEvents,
  }) = _CategorizedEvents;

  factory CategorizedEvents.empty() => const CategorizedEvents(
        todayEvents: [],
        thisWeekEvents: [],
        upcomingEvents: [],
        pastEvents: [],
      );

  factory CategorizedEvents.fromList(List<Event> events) {
    final todayEvents = <Event>[];
    final thisWeekEvents = <Event>[];
    final upcomingEvents = <Event>[];
    final pastEvents = <Event>[];

    final now = DateTime.now();
    for (final event in events) {
      if (event.startDate.isAfter(DateTime.now()) &&
          event.startDate
              .isBefore(DateTime.now().add(const Duration(days: 1)))) {
        todayEvents.add(event);
      } else if (now.weekday <= 2 && event.startDate.isAfter(DateTime.now())) {
        upcomingEvents.add(event);
      } else if (now.weekday > 2 &&
          now.weekday <= 5 &&
          event.startDate
              .isBefore(DateTime.now().add(const Duration(days: 7))) &&
          event.startDate.weekday > 5) {
        thisWeekEvents.add(event);
      } else if (event.startDate
          .isAfter(DateTime.now().add(const Duration(days: 7)))) {
        upcomingEvents.add(event);
      } else {
        pastEvents.add(event);
      }
    }

    return CategorizedEvents(
      todayEvents: todayEvents,
      thisWeekEvents: thisWeekEvents,
      upcomingEvents: upcomingEvents,
      pastEvents: pastEvents,
    );
  }
}
