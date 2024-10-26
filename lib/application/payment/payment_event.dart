part of 'payment_bloc.dart';

@freezed
class PaymentEvent with _$PaymentEvent {
  const factory PaymentEvent.started() = _Started;

  const factory PaymentEvent.startPayment({
    required String ticketRateId,
    required String priceId,
    required String fullName,
    required String phone,
    required String email,
    required String address,
  }) = _GetPaymentDetails;
  const factory PaymentEvent.completePayment({
    required String uid,
    required String paymentId,
  }) = _CompletePayment;
  const factory PaymentEvent.cancelPayment() = _CancelPayment;
  const factory PaymentEvent.failPayment() = _FailPayment;
}
