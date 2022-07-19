import 'package:flutter/material.dart';
import 'package:zemira/src/utils/app_colors.dart';

class LoginButton extends StatelessWidget {
  final dynamic username, password;
  const LoginButton(this.username, this.password);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: AppColors.lightGreen,
        ),
        margin: const EdgeInsets.only(left: 25, right: 25, top: 45),
        child:  TextButton(
            onPressed: () => {},
            child: const Text(
              'Login',
              style: TextStyle(
                  color: AppColors.darkerGreen,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            )));
  }
}
