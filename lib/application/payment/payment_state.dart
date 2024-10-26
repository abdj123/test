part of 'payment_bloc.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState.initial() = _Initial;

  const factory PaymentState.loading() = _Loading;
  const factory PaymentState.startedPayment(
      Map<String, dynamic> paymentDetails) = _Loaded;
  const factory PaymentState.completedPayment() = _Completed;
  const factory PaymentState.cancelledPayment() = _Cancelled;
  const factory PaymentState.failedPayment() = _Failed;
  const factory PaymentState.error(String message) = _Error;
}
