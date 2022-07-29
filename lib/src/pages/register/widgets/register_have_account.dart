import 'package:flutter/material.dart';
import 'package:zemira/src/pages/login/login_page.dart';
import 'package:zemira/src/utils/router.dart';

import '../../../utils/app_colors.dart';

class RegisterHaveAccount extends StatelessWidget {
  const RegisterHaveAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        routerFade(context, LoginPage())
      },
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 150),
        child: RichText(
          text: const TextSpan(
            text: 'Already have an account?',
            style: TextStyle(
                color: AppColors.gray,
                fontSize: 15,
                fontWeight: FontWeight.normal),
            children: [
              TextSpan(
                text: ' Login now',
                style: TextStyle(color: AppColors.lightGreen),
              )
            ],
          ),
        ),
      ),
    );
  }
}
