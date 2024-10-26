import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ticket_tree_client/domain/user-profile/i_user_profile_facade.dart';

import '../../domain/events/i_event_facade.dart';

part 'payment_event.dart';
part 'payment_state.dart';
part 'payment_bloc.freezed.dart';

@injectable
class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  final IEventFacade _eventFacade;
  final IUserProfileFacade _profileFacade;
  PaymentBloc(this._eventFacade, this._profileFacade) : super(_Initial()) {
    on<PaymentEvent>((event, emit) async {
      await event.map(
        started: (e) async {},
        startPayment: (e) async {
          emit(const PaymentState.loading());
          final result = await _eventFacade.getPaymentDetails({
            'redirect_url':
                'https://app.yourwebpage.com/checkout/internal-id/success',
            'error_url':
                'https://app.yourwebpage.com/checkout/internal-id/error',
            'ticket_rate_id': e.ticketRateId,
            'tickets': [
              {
                'price_id': e.priceId,
                'full_name': e.fullName,
                'phone': e.phone,
                'email': e.email,
                'address': e.address,
                "gender": "0",
                "birthday": "1990-01-01",
                "postal_code": "10001",
                "country_code": "ES",
                "personal_document_type": "dni",
                "personal_document_number": "1234567890",
              }
            ]
          });

          emit(result.fold(
            (l) => PaymentState.error(l.map(
                serverError: (e) => "Unknown Error",
                eventNotFound: (e) => "Event Not Found")),
            (r) => PaymentState.startedPayment(r),
          ));
        },
        completePayment: (e) async {
          emit(const PaymentState.completedPayment());
          await _profileFacade.savePayment(uid: e.uid, paymentId: e.paymentId);
        },
        cancelPayment: (e) async {
          emit(const PaymentState.cancelledPayment());
        },
        failPayment: (e) async {
          emit(const PaymentState.failedPayment());
        },
      );
    });
  }
}
