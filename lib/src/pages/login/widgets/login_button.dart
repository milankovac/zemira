import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zemira/src/bloc/authentication/authentication_bloc.dart';
import 'package:zemira/src/utils/app_colors.dart';

class LoginButton extends StatelessWidget {
  final dynamic username, password;
  const LoginButton(this.username, this.password);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthenticationBloc(context),
      child: BlocConsumer<AuthenticationBloc, AuthenticationState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: AppColors.lightGreen,
              ),
              margin: const EdgeInsets.only(left: 25, right: 25, top: 45),
              child: TextButton(
                onPressed: state is LoadingState
                    ? null
                    : () => {
                          BlocProvider.of<AuthenticationBloc>(context)
                              .add(LoginEvent(username, password)),
                          FocusManager.instance.primaryFocus?.unfocus(),
                        },
                style: ButtonStyle(
                    overlayColor:
                        MaterialStateProperty.all(Colors.transparent)),
                child: state is LoadingState
                    ? const CircularProgressIndicator(
                        color: AppColors.darkerGreen,
                        strokeWidth: 4,
                      )
                    : const Text(
                        'Login',
                        style: TextStyle(
                            color: AppColors.darkerGreen,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
              ));
        },
      ),
    );
  }
}
