import 'package:flutter/cupertino.dart';
import 'package:zemira/src/utils/app_colors.dart';
class LoginSubtitle extends StatelessWidget {
  const LoginSubtitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(top: 20),
      child: const Center(
        child: Text('Enter your user name \n and login',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16,
           letterSpacing: 1,
          color: AppColors.fadedGray,
          fontWeight: FontWeight.normal,
        ),),
      ),
    );
  }
}