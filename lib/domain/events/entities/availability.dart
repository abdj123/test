import 'package:freezed_annotation/freezed_annotation.dart';

part 'availability.freezed.dart';

@freezed
abstract class Availability with _$Availability {
  const factory Availability({
    required int sold,
    required int available,
  }) = _Availability;
}
