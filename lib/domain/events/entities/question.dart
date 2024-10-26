import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/value_objects/unique_id.dart';

part 'question.freezed.dart';

@freezed
abstract class Question with _$Question {
  const factory Question({
    required UniqueId id,
    required String label,
    required QuestionType type,
    required bool required,
    List<String>? items,
  }) = _Question;
}

enum QuestionType { text, dropdown }
