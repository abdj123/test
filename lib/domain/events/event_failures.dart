import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_failures.freezed.dart';

@freezed
abstract class EventFailure with _$EventFailure {
  const factory EventFailure.serverError() = ServerError;
  const factory EventFailure.eventNotFound() = EventNotFound;
}
