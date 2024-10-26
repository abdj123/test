part of 'tickets_bloc.dart';

@freezed
class TicketsEvent with _$TicketsEvent {
  const factory TicketsEvent.started() = _Started;

  const factory TicketsEvent.getTickets(List<String> paymentIds) = _GetTickets;
}
