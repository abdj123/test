import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_tree_client/domain/core/value_objects/unique_id.dart';
import 'package:ticket_tree_client/domain/events/entities/question.dart';

part 'question_dto.freezed.dart';
part 'question_dto.g.dart';

@freezed
abstract class QuestionDto implements _$QuestionDto {
  const QuestionDto._();

  const factory QuestionDto({
    String? id,
    required String label,
    required String type,
    required bool required,
    required List<String> items,
  }) = _QuestionDto;

  Question toDomain() {
    return Question(
      id: id == null ? UniqueId() : UniqueId.fromUniqueString(id!),
      label: label,
      type: QuestionType.values.firstWhere((e) => e.name == type),
      required: this.required,
      items: items,
    );
  }

  factory QuestionDto.fromJson(Map<String, dynamic> json) =>
      _$QuestionDtoFromJson(json);
}
