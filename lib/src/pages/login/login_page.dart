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

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  var username = '';
  var password = '';
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
            children: [
              const LoginTtile(),
              const LoginSubtitle(),
              Form(
                  key: widget._formKey,
                  onChanged: () => {
                        setState(() {
                          password = passwordController.text;
                          username = userNameController.text;
                        }),
                      },
                  child: Column(
                    children: [
                      LoginUsernameField(userNameController),
                      LoginPasswordField(passwordController),
                    ],
                  )),
              const LoginForgotPassword(),
              LoginButton(username, password),
              const LoginOrContinue(),
              const LoginWithGoogleButton(),
              const LoginRegisterNow()
            ],
          )),
    );
  }
}
