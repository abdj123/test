import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_tree_client/domain/core/value_objects/unique_id.dart';
import 'package:ticket_tree_client/domain/events/entities/supplement.dart';

part 'supplement_dto.freezed.dart';
part 'supplement_dto.g.dart';

@freezed
abstract class SupplementDto implements _$SupplementDto {
  const SupplementDto._();

  const factory SupplementDto({
    String? id,
    required String label,
    required double price,
  }) = _SupplementDto;

  Supplement toDomain() {
    return Supplement(
      id: id == null ? UniqueId() : UniqueId.fromUniqueString(id!),
      label: label,
      price: price,
    );
  }

  factory SupplementDto.fromJson(Map<String, dynamic> json) =>
      _$SupplementDtoFromJson(json);
}
