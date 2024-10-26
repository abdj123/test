import 'package:freezed_annotation/freezed_annotation.dart';

part 'genre.freezed.dart';

@freezed
abstract class Genre with _$Genre {
  const factory Genre({
    required String name,
    required String? imageUrl,
    required bool isSelected,
  }) = _Genre;
}
