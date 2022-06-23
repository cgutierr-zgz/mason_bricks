part of 'auth_bloc.dart';

abstract class AuthState{{#equatable}}extends Equatable{{/equatable}} {
  const AuthState();
}

class AuthChecking extends AuthState {
  const AuthChecking();
}

class AuthUnauthenticated extends AuthState {
  const AuthUnauthenticated();
}

class AuthAuthenticating extends AuthState {
  const AuthAuthenticating();
}

class AuthAuthenticated extends AuthState {
  const AuthAuthenticated({required this.user});
  final User user;

  {{#equatable}}@override
  List<Object> get props => [user];{{/equatable}}
}

class AuthError extends AuthState {
  const AuthError({
    required this.exception,
  });

  final Exception exception;
  
  {{#equatable}}@override
  List<Object> get props => [exception];{{/equatable}}
}
