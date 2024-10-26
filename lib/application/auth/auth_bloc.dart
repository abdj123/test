import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth/entities/auth_user.dart';
import '../../domain/auth/i_auth_facade.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;
  AuthBloc(this._authFacade) : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        checkAuth: (e) async {
          final userOption = await _authFacade.getSignedInUser();
          userOption.fold(
              () => emit(const AuthState.unauthenticated()),
              (AuthUser e) =>
                  emit(AuthState.authenticated(e.uid.getOrCrash())));
        },
        signOut: (e) {
          _authFacade.signOut();
          emit(const AuthState.unauthenticated());
        },
        deleteAccount: (_DeleteAccount value) async {
          final result = await _authFacade.deleteAccount();
          result.fold((failure) {}, (data) {
            emit(const AuthState.unauthenticated());
          });
        },
      );
    });
  }
}
