part of 'auth_bloc.dart';

abstract class AuthEvent{{#equatable}} extends Equatable{{/equatable}} {
  const AuthEvent();
}

class CheckingSession extends AuthEvent {
  const CheckingSession();
}

class SignInRequested extends AuthEvent {
  const SignInRequested();
}

class SignOutRequested extends AuthEvent {
  const SignOutRequested();
}

class AuthFailed extends AuthEvent {
  const AuthFailed({
    required this.exception,
  });

  final Exception exception;

  {{#equatable}}@override
  List<Object> get props => [exception];{{/equatable}}
}
