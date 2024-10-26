import 'package:freezed_annotation/freezed_annotation.dart';

part 'warranty.freezed.dart';

@freezed
abstract class Warranty with _$Warranty {
  const factory Warranty({
    bool? enabled,
    int? percentage,
    int? hours,
  }) = _Warranty;
}
