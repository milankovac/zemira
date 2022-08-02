import 'package:flutter/cupertino.dart';
import 'package:zemira/src/pages/home/widgets/home_top_playlist_single.dart';
import 'package:zemira/src/utils/app_colors.dart';

class HomeTopPlaylists extends StatelessWidget {
  const HomeTopPlaylists({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 41, top: 37.5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Top Playlists',
            textAlign: TextAlign.left,
            style: TextStyle(
                color: AppColors.fadedGray,
                fontFamily: 'Poppins, Medium',
                fontSize: 16),
          ),
          SizedBox(
            height: 94,
            child: ListView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: [
                for (int i = 0; i < 3; i++) const HomeTopPlaylistSingle()
              ],
            ),
          )
        ],
      ),
    );
  }
}
