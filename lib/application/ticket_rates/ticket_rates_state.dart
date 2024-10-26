part of 'ticket_rates_bloc.dart';

@freezed
class TicketRatesState with _$TicketRatesState {
  const factory TicketRatesState.initial() = _Initial;

  const factory TicketRatesState.loading() = _Loading;
  const factory TicketRatesState.loaded(List<TicketRate> ticketRates) = _Loaded;
  const factory TicketRatesState.error(String message) = _Error;
}
