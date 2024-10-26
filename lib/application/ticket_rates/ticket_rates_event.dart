part of 'ticket_rates_bloc.dart';

@freezed
class TicketRatesEvent with _$TicketRatesEvent {
  const factory TicketRatesEvent.started() = _Started;

  const factory TicketRatesEvent.getTicketRates(String eventId) =
      _GetTicketRates;
}
