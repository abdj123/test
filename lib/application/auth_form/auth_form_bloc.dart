import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth/auth_failures.dart';
import '../../domain/auth/i_auth_facade.dart';
import '../../domain/auth/value_objects/email_adddress.dart';
import '../../domain/auth/value_objects/password.dart';
import '../../infrastructure/loging-events/event_logger.dart';

part 'auth_form_event.dart';
part 'auth_form_state.dart';
part 'auth_form_bloc.freezed.dart';

@injectable
class AuthFormBloc extends Bloc<AuthFormEvent, AuthFormState> {
  final IAuthFacade _authFacade;
  AuthFormBloc(this._authFacade) : super(AuthFormState.initial()) {
    on<AuthFormEvent>((event, emit) async {
      await event.map(
        emailChanged: (e) {
          emit(
            state.copyWith(
              emailAddress: EmailAddress(e.emailStr),
              authFailureOrSuccessOption: none(),
            ),
          );
        },
        passwordChanged: (e) {
          emit(
            state.copyWith(
              password: Password(e.passwordStr),
              authFailureOrSuccessOption: none(),
            ),
          );
        },
        dobChanged: (e) {
          emit(
            state.copyWith(
              dob: e.dob,
              authFailureOrSuccessOption: none(),
            ),
          );
        },
        registerWithEmailAndPasswordPressed: (e) async =>
            await _performActionWithEmailAndPassword(
                _authFacade.registerWithEmailAndPassword, emit),
        signInWithEmailAndPasswordPressed: (e) async =>
            await _performActionWithEmailAndPassword(
                _authFacade.signInWithEmailAndPassword, emit),
        signInWithGooglePressed: (e) async =>
            await _performActionWithAuthProviders(
                _authFacade.continueWithGoogle, emit),
        signInWithFacebookPressed: (e) async =>
            await _performActionWithAuthProviders(
                _authFacade.continueWithFacebook, emit),
        signInWithApplePressed: (e) async =>
            await _performActionWithAuthProviders(
                _authFacade.continueWithApple, emit),
      );
    });
  }

  Future<void> _performActionWithEmailAndPassword(
    Future<Either<AuthFailure, Unit>> Function({
      required EmailAddress emailAddress,
      required Password password,
    }) forwardCall,
    Emitter<AuthFormState> emit,
  ) async {
    AnalyticsService().logLogin(method: "perform auth with email and password");
    Either<AuthFailure, Unit>? failureOrSuccess;
    if (state.emailAddress.isValid() && state.password.isValid()) {
      emit(
        state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        ),
      );
      failureOrSuccess = await forwardCall(
        emailAddress: state.emailAddress,
        password: state.password,
      );
    }
    emit(
      state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        authFailureOrSuccessOption: optionOf(failureOrSuccess),
      ),
    );
  }

  Future<void> _performActionWithAuthProviders(
    Future<Either<AuthFailure, Unit>> Function() forwardCall,
    Emitter<AuthFormState> emit,
  ) async {
    AnalyticsService().logLogin(method: "perform auth with auth providers");
    Either<AuthFailure, Unit>? failureOrSuccess;
    emit(
      state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      ),
    );
    failureOrSuccess = await forwardCall();
    emit(
      state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        authFailureOrSuccessOption: optionOf(failureOrSuccess),
      ),
    );
  }
}
