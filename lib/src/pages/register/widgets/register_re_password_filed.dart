import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../utils/app_colors.dart';

class RegisterRePasswordField extends StatelessWidget {
  const RegisterRePasswordField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
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
            suffixIcon: IconButton(
              onPressed: null,
              icon: FaIcon(
                FontAwesomeIcons.eye,
                color: AppColors.gray,
                size: 15,
              ),
            ),
            hintText: 'Password',
            hintStyle: TextStyle(color: AppColors.gray, fontSize: 15)),
      ),
    );
  }
}
