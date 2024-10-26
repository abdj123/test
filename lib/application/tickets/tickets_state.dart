part of 'tickets_bloc.dart';

@freezed
class TicketsState with _$TicketsState {
  const factory TicketsState.initial() = _Initial;

  const factory TicketsState.loading() = _Loading;
  const factory TicketsState.loaded(List<Map<String, dynamic>> payments) =
      _Loaded;
  const factory TicketsState.error(String message) = _Error;
}
