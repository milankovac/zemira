import 'package:flutter/material.dart';
import 'package:zemira/src/utils/app_colors.dart';
import 'package:zemira/src/widgets/navigation.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Navigation(1),
      backgroundColor: AppColors.backgroundColor,
      body: const Center(
        child: Text('Search'),
      ),
    );
  }
}
