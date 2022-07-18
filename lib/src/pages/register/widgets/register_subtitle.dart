import 'package:flutter/cupertino.dart';
import 'package:zemira/src/utils/app_colors.dart';
class RegisterSubtitle extends StatelessWidget {
  const RegisterSubtitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(top: 20),
      child: const Center(
        child: Text('Join Zemira',
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