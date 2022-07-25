import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:zemira/src/controllers/login_controller.dart';
import 'package:zemira/src/utils/snack_bars/error_sneck_bar.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final dynamic context;
  AuthenticationBloc(this.context) : super(AuthenticationInitial()) {
    on<LoginEvent>((event, emit) async {
      emit(LoadingState());
      try {
        await LoginController(event.username, event.password).proced();
        emit(AuthenticatedState());
      } on FirebaseAuthException catch (_) {
         emit(UnauthenticatedState());
        errorSneckBar(context, 'The username or password is incorrect');
      }
    });
  }
}
