part of 'authentication_bloc.dart';

@immutable
abstract class AuthenticationEvent {}

class LoginEvent extends AuthenticationEvent {
  final String username;
  final String password;
  LoginEvent(this.username, this.password);
}

class AutoLoginEvent extends AuthenticationEvent{}

class GoogleLoginEvent extends AuthenticationEvent{}