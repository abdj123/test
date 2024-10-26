import 'package:freezed_annotation/freezed_annotation.dart';

part 'field.freezed.dart';

@freezed
abstract class Field with _$Field {
  const factory Field({
    required String label,
    required String type,
    required bool required,
    List<String>? items,
  }) = _Field;
}
