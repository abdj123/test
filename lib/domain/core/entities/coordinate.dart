import 'package:freezed_annotation/freezed_annotation.dart';

import '../value_objects/latitude.dart';
import '../value_objects/longtude.dart';

part 'coordinate.freezed.dart';

@freezed
abstract class Coordinate with _$Coordinate {
  const factory Coordinate({
    required Latitude latitude,
    required Longtude longtude,
  }) = _Coordinate;
}
