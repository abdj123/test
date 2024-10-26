import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ticket_tree_client/domain/events/entities/event.dart';
import 'package:ticket_tree_client/domain/events/i_event_facade.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IEventFacade _eventFacade;
  SearchBloc(this._eventFacade) : super(_Initial()) {
    on<SearchEvent>((event, emit) async {
      await event.map(
        started: (value) async => {},
        search: (value) async {
          print('searching: ${value.searchTerm}');
          emit(const SearchState.loading());
          final events = await _eventFacade.getEvents(
            limit: value.limit,
            skip: value.skip,
            searchTerm: value.searchTerm,
          );
          events.fold(
            (f) => emit(const SearchState.error('Something went wrong.')),
            (events) => emit(SearchState.loaded(events)),
          );
        },
      );
    });
  }
}
