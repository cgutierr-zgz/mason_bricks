import 'dart:developer';

import 'package:bloc/bloc.dart';
{{#equatable}}import 'package:equatable/equatable.dart';{{/equatable}}

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super() {
    on<CheckingSession>(_checkingSession);
    on<SignInRequested>(_signIn);
    on<AuthFailed>(_authFailed);
    on<SignOutRequested>(_signOut);
  }

  Future<void> _checkingSession(CheckingSession event, Emitter emit) async {
    emit(const AuthChecking());

    try {
      // var user = await _authRepository.checkSession();
      final user = null;

      if (user != null) {
        emit(AuthAuthenticated(user: user));
      } else {
        // user = await _authRepository.refreshTokens();

        if (user != null) {
          emit(AuthAuthenticated(user: user));
        } else {
          emit(const AuthUnauthenticated());
        }
      }
    } catch (e) {
      add(AuthFailed(exception: Exception(e)));
    }
  }

  Future<void> _signIn(SignInRequested event, Emitter emit) async {
    emit(const AuthAuthenticating());

    try {
      // final user = await _authRepository.signIn();
      final user = '';

      if (user != null) {
        emit(AuthAuthenticated(user: user));
      } else {
        emit(const AuthUnauthenticated());
      }
    } catch (e) {
      add(AuthFailed(exception: Exception(e)));
    }
  }

  Future<void> _authFailed(AuthFailed event, Emitter emit) async {
    log('Error: ${event.exception}');
    emit(AuthError(exception: event.exception));
    // await _authRepository.deleteCredentials();
    emit(const AuthUnauthenticated());
  }

  Future<void> _signOut(SignOutRequested event, Emitter emit) async {
    try {
      // await _authRepository.signOut();

      emit(const AuthUnauthenticated());
    } on PlatformException catch (e) {
      add(AuthFailed(exception: Exception(e.message)));
    } catch (e) {
      add(AuthFailed(exception: Exception(e)));
    }
  }
}
