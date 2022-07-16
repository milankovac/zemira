import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../utils/app_colors.dart';

class LoginWithGoogleButton extends StatelessWidget {
  const LoginWithGoogleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: AppColors.fadedGray,
        ),
        margin: const EdgeInsets.only(left: 25, right: 25, top: 15),
        child: TextButton.icon(
            onPressed: null,
            icon: const FaIcon(FontAwesomeIcons.google, color: AppColors.black, size: 18,),
            label: const Text(
              '  Login with Google',
              style: TextStyle(
                  color: AppColors.backgroundColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            )),);
  }
}