import 'package:flutter/cupertino.dart';
import 'package:zemira/src/utils/app_colors.dart';
class LoginTtile extends StatelessWidget {
  const LoginTtile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(top: 100),
      child: const Center(
        child: Text('Hello!',style: TextStyle(
          fontSize: 36,
           letterSpacing: 1,
          color: AppColors.fadedGray,
          fontWeight: FontWeight.bold
        )),
      ),
    );
  }
}