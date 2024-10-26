import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/value_objects/unique_id.dart';

part 'supplement.freezed.dart';

@freezed
abstract class Supplement with _$Supplement {
  const factory Supplement({
    required UniqueId id,
    required String label,
    required double price,
  }) = _Supplement;
}
