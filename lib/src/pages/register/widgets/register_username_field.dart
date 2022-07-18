import 'package:flutter/material.dart';
import 'package:zemira/src/utils/app_colors.dart';

class RegisterUsernameField extends StatelessWidget {
  const RegisterUsernameField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      padding: const EdgeInsets.only(left: 25, right: 25),
      child: const TextField(
        cursorColor: AppColors.gray,
        style: TextStyle(
            color: AppColors.gray,
            fontSize: 15,
            decorationThickness: 0,
            decoration: TextDecoration.none,
            decorationColor: Colors.white),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(16),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.gray),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.gray),
            ),
            hintText: 'Enter username',
            hintStyle: TextStyle(color: AppColors.gray, fontSize: 15)),
      ),
    );
  }
}
