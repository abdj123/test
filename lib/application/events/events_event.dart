part of 'events_bloc.dart';

@freezed
class EventsEvent with _$EventsEvent {
  const factory EventsEvent.started() = Started;

  const factory EventsEvent.getCategorizedEvents(
      {required int limit, required int skip}) = GetCategorizedEvents;
  const factory EventsEvent.getEventById(String eventId) = GetEventById;
  const factory EventsEvent.getEventsByIds(List<String> eventIds) =
      GetEventsByIds;
}
