import 'package:flutter/material.dart';
import 'package:zemira/src/utils/app_colors.dart';
import 'package:zemira/src/widgets/navigation.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      bottomNavigationBar: Navigation(0),
      body: const Center(
        child: Text('Home Page'),
      ),
    );
  }
}
