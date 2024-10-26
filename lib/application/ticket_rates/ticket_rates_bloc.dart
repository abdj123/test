import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/events/entities/ticket_rate.dart';
import '../../domain/events/i_event_facade.dart';

part 'ticket_rates_event.dart';
part 'ticket_rates_state.dart';
part 'ticket_rates_bloc.freezed.dart';

@injectable
class TicketRatesBloc extends Bloc<TicketRatesEvent, TicketRatesState> {
  final IEventFacade _eventFacade;
  TicketRatesBloc(this._eventFacade) : super(_Initial()) {
    on<TicketRatesEvent>((event, emit) async {
      await event.map(
          started: (e) async {},
          getTicketRates: (e) async {
            emit(const TicketRatesState.loading());
            final failureOrTicketRates =
                await _eventFacade.getEventTickets(eventId: e.eventId);

            emit(
              failureOrTicketRates.fold(
                (f) => TicketRatesState.error(
                  f.map(
                    serverError: (e) => "Unknown Error",
                    eventNotFound: (e) => "Event not found",
                  ),
                ),
                (ticketRates) => TicketRatesState.loaded(ticketRates),
              ),
            );
          });
    });
  }
}
