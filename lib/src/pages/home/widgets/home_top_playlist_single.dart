import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zemira/src/utils/app_colors.dart';

class HomeTopPlaylistSingle extends StatelessWidget {
  const HomeTopPlaylistSingle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 14, right: 12),
      width: 168,
      height: 94,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
            image: NetworkImage('https://i.ytimg.com/vi/jxxaEMCNAOI/maxresdefault.jpg'),
            fit: BoxFit.fill,
          ),
      ),
      // child: Container(
      //   margin: const EdgeInsets.fromLTRB(18, 40, 0, 16),
      //   child: const Text(
      //     'Chill Mix',
      //     style: TextStyle(
      //         color: AppColors.fadedGray,
      //         fontSize: 16,
      //         fontFamily: 'Sofia Pro, Medium'),
      //   ),
      // ),
    );
  }
}
