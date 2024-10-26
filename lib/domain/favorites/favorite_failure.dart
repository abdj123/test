import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_failure.freezed.dart';

@freezed
abstract class FavoriteFailure with _$FavoriteFailure {
  const factory FavoriteFailure.serverError() = ServerError;
}
