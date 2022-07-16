import 'package:flutter/cupertino.dart';
import 'package:zemira/src/utils/app_colors.dart';
class LoginForgotPassword extends StatelessWidget {
  const LoginForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      margin: const EdgeInsets.only(top: 15),
      padding: const EdgeInsets.only(left: 25, right: 25),
      child: const Text('Forgot your password?', style: TextStyle(
        color: AppColors.gray,
        fontSize: 12,
        fontWeight: FontWeight.normal

      ),),
    );
  }
}