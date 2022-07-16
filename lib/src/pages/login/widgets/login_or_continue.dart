import 'package:flutter/cupertino.dart';
import 'package:zemira/src/utils/app_colors.dart';

class LoginOrContinue extends StatelessWidget {
  const LoginOrContinue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      alignment: Alignment.center,
      child: const Text(
        'Or continue with',
        style: TextStyle(
            color: AppColors.gray, fontSize: 15, fontWeight: FontWeight.normal),
      ),
    );
  }
}
