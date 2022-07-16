import 'package:flutter/material.dart';
import 'package:zemira/src/pages/login/widgets/login_button.dart';
import 'package:zemira/src/pages/login/widgets/login_forgot_password.dart';
import 'package:zemira/src/pages/login/widgets/login_or_continue.dart';
import 'package:zemira/src/pages/login/widgets/login_password_filed.dart';
import 'package:zemira/src/pages/login/widgets/login_register_now.dart';
import 'package:zemira/src/pages/login/widgets/login_subtitle.dart';
import 'package:zemira/src/pages/login/widgets/login_title.dart';
import 'package:zemira/src/pages/login/widgets/login_username_field.dart';
import 'package:zemira/src/pages/login/widgets/login_with_google_button.dart';
import 'package:zemira/src/utils/app_colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.backgroundColor,
        image: DecorationImage(
          image: AssetImage("assets/images/login_lines.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
          //stop scroll
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          body: ListView(
            physics: const BouncingScrollPhysics(),
            children: const [
              LoginTtile(),
              LoginSubtitle(),
              LoginUsernameField(),
              LoginPasswordField(),
              LoginForgotPassword(),
              LoginButton(),
              LoginOrContinue(),
              LoginWithGoogleButton(),
              LoginRegisterNow()
            ],
          )),
    );
  }
}
