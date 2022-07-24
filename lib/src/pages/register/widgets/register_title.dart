import 'package:flutter/cupertino.dart';
import 'package:zemira/src/utils/app_colors.dart';
class RegisterTitle extends StatelessWidget {
  const RegisterTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(top: 150),
      child: const Center(
        child: Text('Registration',style: TextStyle(
          fontSize: 36,
           letterSpacing: 1,
          color: AppColors.fadedGray,
          fontWeight: FontWeight.bold
        )),
      ),
    );
  }
}