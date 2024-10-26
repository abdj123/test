part of 'auth_form_bloc.dart';

@freezed
abstract class AuthFormState with _$AuthFormState {
  const factory AuthFormState({
    required EmailAddress emailAddress,
    required Password password,
    required DateTime? dob,
    required bool isSubmitting,
    required bool showErrorMessages,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _AuthFormState;
  factory AuthFormState.initial() => AuthFormState(
        emailAddress: EmailAddress(''),
        password: Password(''),
        dob: null,
        isSubmitting: false,
        showErrorMessages: false,
        authFailureOrSuccessOption: none(),
      );
}
