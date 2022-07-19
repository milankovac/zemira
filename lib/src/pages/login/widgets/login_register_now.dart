import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:zemira/src/pages/register/register_page.dart';
import '../../../utils/app_colors.dart';

class LoginRegisterNow extends StatelessWidget {
  const LoginRegisterNow({Key? key}) : super(key: key);

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
            type: PageTransitionType.rightToLeftJoined,
            childCurrent: this,
            child: const RegisterPage(),
          ),
        )
      },
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 100),
        child: RichText(
          text: const TextSpan(
            text: 'Not a member?',
            style: TextStyle(
                color: AppColors.gray,
                fontSize: 15,
                fontWeight: FontWeight.normal),
            children: [
              TextSpan(
                text: ' Register now',
                style: TextStyle(color: AppColors.lightGreen),
              )
            ],
          ),
        ),
      ),
    );
  }
}
