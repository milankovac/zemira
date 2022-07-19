import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:zemira/src/pages/login/login_page.dart';

import '../../../utils/app_colors.dart';

class RegisterHaveAccount extends StatelessWidget {
  const RegisterHaveAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.push(
          context,
          PageTransition(
            alignment: Alignment.bottomCenter,
            curve: Curves.easeInOut,
            duration: const Duration(milliseconds: 400),
            reverseDuration: const Duration(milliseconds: 400),
            type: PageTransitionType.leftToRightJoined,
            childCurrent: this,
            child: LoginPage(),
          ),
        )
      },
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 200),
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
