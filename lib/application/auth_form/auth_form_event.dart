part of 'auth_form_bloc.dart';

@freezed
class AuthFormEvent with _$AuthFormEvent {
  const factory AuthFormEvent.emailChanged(String emailStr) = EmailChanged;
  const factory AuthFormEvent.passwordChanged(String passwordStr) =
      PasswordChanged;
  const factory AuthFormEvent.dobChanged(DateTime dob) = DoBChanged;
  const factory AuthFormEvent.registerWithEmailAndPasswordPressed() =
      RegisterWithEmailAndPasswordPressed;
  const factory AuthFormEvent.signInWithEmailAndPasswordPressed() =
      SignInWithEmailAndPasswordPressed;
  const factory AuthFormEvent.signInWithGooglePressed() =
      SignInWithGooglePressed;
  const factory AuthFormEvent.signInWithFacebookPressed() =
      SignInWithFacebookPressed;
  const factory AuthFormEvent.signInWithApplePressed() = SignInWithApplePressed;
}
