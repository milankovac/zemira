import 'package:flutter/material.dart';
import 'package:zemira/src/utils/app_colors.dart';
import 'package:zemira/src/widgets/navigation.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      bottomNavigationBar: Navigation(3),
      body: const Center(
        child: Text('Profile'),
      ),
    );
  }
}
