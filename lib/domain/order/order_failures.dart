import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_failures.freezed.dart';

@freezed
abstract class OrderFailure with _$OrderFailure {
  const factory OrderFailure.serverError() = ServerError;
}
