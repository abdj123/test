import 'package:freezed_annotation/freezed_annotation.dart';

part 'genre_failures.freezed.dart';

@freezed
abstract class GenreFailure with _$GenreFailure {
  const factory GenreFailure.serverError() = ServerError;
}
