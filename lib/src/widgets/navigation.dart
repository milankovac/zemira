import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zemira/src/pages/favorite/favorite_page.dart';
import 'package:zemira/src/pages/home/home_page.dart';
import 'package:zemira/src/pages/profile/profile_page.dart';
import 'package:zemira/src/pages/search/search_page.dart';
import 'package:zemira/src/utils/app_colors.dart';
import 'package:zemira/src/utils/router.dart';

class Navigation extends StatefulWidget {
  final int currentPage;
  Navigation(this.currentPage) : super(key: UniqueKey());

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
    void _handleIndexChanged(int i) {
      setState(() {
        switch (i) {
          case 0:
            routerFade(context, const HomePage());
            break;
          case 1:
            routerFade(context, const SearchPage());
            break;
          case 2:
            routerFade(context, const FavoritePage());
            break;
          case 3:
            routerFade(context, const ProfilePage());
            break;
        }
      });
    }

    return DotNavigationBar(
        itemPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 21),
        marginR: const EdgeInsets.all(20),
        enablePaddingAnimation: false,
        currentIndex: widget.currentPage,
        onTap: _handleIndexChanged,
        borderRadius: 15,
        dotIndicatorColor: AppColors.lightGreen,
        backgroundColor: Colors.transparent,
        selectedItemColor: AppColors.lightGreen,
        items: [
          // Home
          DotNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.houseChimney,
              size: 25,
              color: widget.currentPage == 0
                  ? AppColors.lightGreen
                  : AppColors.fadedGray,
            ),
          ),

          // Search
          DotNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.magnifyingGlass,
              size: 25,
              color: widget.currentPage == 1
                  ? AppColors.lightGreen
                  : AppColors.fadedGray,
            ),
          ),

          // Favorite
          DotNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.heart,
              size: 25,
              color: widget.currentPage == 2
                  ? AppColors.lightGreen
                  : AppColors.fadedGray,
            ),
          ),

          // Profile
          DotNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.user,
              size: 21,
              color: widget.currentPage == 3
                  ? AppColors.lightGreen
                  : AppColors.fadedGray,
            ),
          ),
        ]);
  }
}
