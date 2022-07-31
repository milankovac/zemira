import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:zemira/src/controllers/login_controller.dart';
import 'package:zemira/src/pages/home/home_page.dart';
import 'package:zemira/src/utils/router.dart';
import 'package:zemira/src/utils/snack_bars/error_sneck_bar.dart';

import '../../controllers/auto_login_controller.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final dynamic context;
  AuthenticationBloc(this.context) : super(AuthenticationInitial()) {
    // #LOGIN
    on<LoginEvent>((event, emit) async {
      emit(LoadingState());
      try {
        await LoginController(event.username, event.password).proced();
        emit(AuthenticatedState());
        routerFade(context, HomePage());
      } on FirebaseAuthException catch (_) {
        emit(UnauthenticatedState());
        errorSneckBar(context, 'The username or password is incorrect');
      }
    });

    // #AUTO LOGIN
    on<AutoLoginEvent>((event, emit) async {
      try {
        await AutoLoginController().proced();
        emit(AuthenticatedState());
      } catch (_) {
        emit(UnauthenticatedState());
      }
    });
  }
}
