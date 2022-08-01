import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:zemira/src/utils/app_colors.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 41, top: 41),
        child: const Text(
          'Discover!',
          style: TextStyle(
            fontFamily: 'Poppins,SemiBold',
              color: AppColors.fadedGray,
              fontSize: 36,
              fontWeight: FontWeight.bold),
        ));
  }
}
