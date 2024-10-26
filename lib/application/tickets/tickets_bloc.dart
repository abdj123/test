import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ticket_tree_client/domain/events/i_event_facade.dart';

part 'tickets_event.dart';
part 'tickets_state.dart';
part 'tickets_bloc.freezed.dart';

@injectable
class TicketsBloc extends Bloc<TicketsEvent, TicketsState> {
  final IEventFacade _eventsFacade;
  TicketsBloc(this._eventsFacade) : super(_Initial()) {
    on<TicketsEvent>((event, emit) async {
      await event.map(
          started: (e) async => null,
          getTickets: (e) async {
            emit(const TicketsState.loading());
            try {
              emit(const TicketsState.loading());
              final res =
                  await _eventsFacade.getPaidTickets(paymentIds: e.paymentIds);
              res.fold(
                (l) => emit(TicketsState.error(l.toString())),
                (r) => emit(TicketsState.loaded(r)),
              );
            } catch (e) {
              print('Error on tickets bloc: $e');
              emit(const TicketsState.error('Unknown error'));
            }
          });
    });
  }
}
