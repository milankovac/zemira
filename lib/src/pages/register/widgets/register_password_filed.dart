import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../utils/app_colors.dart';

class RegisterPasswordField extends StatefulWidget {
  const RegisterPasswordField({Key? key}) : super(key: key);

  @override
  State<RegisterPasswordField> createState() => _RegisterPasswordFieldState();
}

class _RegisterPasswordFieldState extends State<RegisterPasswordField> {
  var _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      padding: const EdgeInsets.only(left: 25, right: 25),
      child: TextField(
        obscureText: (_isObscure),
        obscuringCharacter: "*",
        cursorColor: AppColors.gray,
        style: const TextStyle(
            color: AppColors.gray,
            fontSize: 15,
            decorationThickness: 0,
            decoration: TextDecoration.none,
            decorationColor: Colors.white),
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(16),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.gray),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.gray),
            ),
            suffixIcon: IconButton(
              onPressed: () => {
                setState(() {
                  _isObscure = !_isObscure;
                })
              },
              icon: FaIcon(
                _isObscure ? FontAwesomeIcons.eyeSlash : FontAwesomeIcons.eye,
                color: AppColors.gray,
                size: 15,
              ),
              splashColor: Colors.transparent,
            ),
            hintText: 'Password',
            hintStyle: const TextStyle(color: AppColors.gray, fontSize: 15)),
      ),
    );
  }
}
