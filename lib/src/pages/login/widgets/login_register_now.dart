import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';

class LoginRegisterNow extends StatelessWidget {
  const LoginRegisterNow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(top: 100),
      child: RichText(
        text: const TextSpan(
          text: 'Not a member?',
          style: TextStyle(
              color: AppColors.gray, fontSize: 15, fontWeight: FontWeight.normal),
          children: [
            TextSpan(
              text: ' Register now',
              style: TextStyle(
               color: AppColors.lightGreen
              ),
            )
          ],
        ),
      ),
    );
  }
}
