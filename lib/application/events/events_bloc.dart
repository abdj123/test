import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/events/entities/categorized_events.dart';
import '../../domain/events/i_event_facade.dart';

part 'events_event.dart';
part 'events_state.dart';
part 'events_bloc.freezed.dart';

@injectable
class EventsBloc extends Bloc<EventsEvent, EventsState> {
  final IEventFacade _eventFacade;
  EventsBloc(this._eventFacade) : super(const _Initial()) {
    on<EventsEvent>((event, emit) async {
      await event.map(
        started: (value) async => {},
        getCategorizedEvents: (value) async {
          emit(const EventsState.loading());
          final events = await _eventFacade.getEvents(
              limit: value.limit, skip: value.skip);
          events.fold(
            (f) => emit(const EventsState.error('Something went wrong.')),
            (events) =>
                emit(EventsState.loaded(CategorizedEvents.fromList(events))),
          );
        },
        getEventById: (value) async => {},
        getEventsByIds: (value) async => {},
      );
    });
  }
}
