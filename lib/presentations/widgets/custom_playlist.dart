import 'package:flutter/material.dart';
import 'package:music_player/constants/palettes/color_palette.dart';
import 'package:music_player/presentations/screens/screen_created_playlist/screen_created_playlist.dart';
import 'package:music_player/presentations/screens/screen_favourite/screen_favourite.dart';

class CustomPlayList extends StatelessWidget {
  const CustomPlayList({
    Key? key,
    required this.playlistImage,
    required this.playlistName,
    required this.playlistSongLength,
  }) : super(key: key);

  final String playlistImage;
  final String playlistName;
  final int playlistSongLength;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (ctx) {
              if (playlistName == 'Favourites') {
                return ScreenFavourites(
                  playlistName: "Favourites",
                );
              }
              if (playlistName == 'Recent') {
                return ScreenFavourites(
                  playlistName: "Recent",
                );
              }
              if (playlistName == 'Most Played') {
                return ScreenFavourites(
                  playlistName: "Most Played",
                );
              }
              return ScreenCreatedPlaylist(
                playlistName: playlistName,
              );
            },
          ),
        );
      },
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 14),
            // width: 120,
            width: screenWidth * 0.35,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Image.asset(
                playlistImage,
                fit: BoxFit.cover,
                // height: 137,
                height: screenHeight * 0.21,
              ),
            ),
          ),
          Positioned(
            bottom: 12,
            left: 7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  playlistName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  ' $playlistSongLength Songs',
                  style: const TextStyle(
                    color: kLightBlue,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
