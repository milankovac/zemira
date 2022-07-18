import 'package:flutter/material.dart';
import 'package:zemira/src/pages/register/widgets/register_button.dart';
import 'package:zemira/src/pages/register/widgets/register_have_account.dart';
import 'package:zemira/src/pages/register/widgets/register_password_filed.dart';
import 'package:zemira/src/pages/register/widgets/register_re_password_filed.dart';
import 'package:zemira/src/pages/register/widgets/register_subtitle.dart';
import 'package:zemira/src/pages/register/widgets/register_title.dart';
import 'package:zemira/src/pages/register/widgets/register_username_field.dart';
import '../../utils/app_colors.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
         resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          body: ListView(
            physics: const BouncingScrollPhysics(),
            children: const [
              RegisterTitle(),
              RegisterSubtitle(),
              RegisterUsernameField(),
              RegisterPasswordField(),
              RegisterRePasswordField(),
              RegisterButton(),
              RegisterHaveAccount()
            ],
          ),
      ));
  }
}