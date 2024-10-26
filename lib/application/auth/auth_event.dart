part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkAuth() = _CheckAuth;
  const factory AuthEvent.signOut() = _SignOut;
  const factory AuthEvent.deleteAccount() = _DeleteAccount;
}
