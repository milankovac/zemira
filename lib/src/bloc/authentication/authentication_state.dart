part of 'authentication_bloc.dart';

@immutable
abstract class AuthenticationState {}

class AuthenticationInitial extends AuthenticationState {}

class AuthenticatedState extends AuthenticationState {}

class UnauthenticatedState extends AuthenticationState {}

class LoadingState extends AuthenticationState {}