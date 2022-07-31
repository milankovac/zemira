import 'package:flutter/material.dart';
import 'package:zemira/src/widgets/navigation.dart';

import '../../utils/app_colors.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      bottomNavigationBar: Navigation(2),
      body: const Center(
        child: Text('Favorite'),
      ),
    );
  }
}
