import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_failures.freezed.dart';

@freezed
abstract class CommonFailure with _$CommonFailure {
  const factory CommonFailure.serverError() = ServerError;
}
