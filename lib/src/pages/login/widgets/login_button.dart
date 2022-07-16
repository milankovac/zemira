import 'package:flutter/material.dart';
import 'package:zemira/src/utils/app_colors.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: AppColors.lightGreen,
        ),
        margin: const EdgeInsets.only(left: 25, right: 25, top: 45),
        child: const TextButton(
            onPressed: null,
            child: Text(
              'Login',
              style: TextStyle(
                  color: AppColors.darkerGreen,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            )));
  }
}
