import 'dart:developer';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player/application/fav_recent_most/fav_recent_most_bloc.dart';
import 'package:music_player/application/screen_home/screen_home_bloc.dart';
import 'package:music_player/presentations/alert_functions.dart';
import 'package:music_player/constants/palettes/color_palette.dart';
import 'package:music_player/presentations/screens/screen_search/screen_search.dart';
import 'package:music_player/presentations/widgets/custom_playlist.dart';
import 'package:music_player/presentations/widgets/song_list_tile.dart';

class ScreenHome extends StatelessWidget {
  ScreenHome({
    super.key,
  });
  final List<String> playlistNames = ['Favourites', 'Recent', 'Most Played'];
  String greeting() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Good Morning !';
    }
    if (hour < 16) {
      return 'Good Afternoon !';
    }
    if (hour < 19) {
      return 'Good Evening !';
    }
    return 'Good Night !';
  }

  AssetsAudioPlayer audioPlayer = AssetsAudioPlayer.withId('0');

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<ScreenHomeBloc>(context).add(const Initailize());
    });
    final screenHeight = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              greeting(),
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ScreenSearch(
                        audioPlayer: audioPlayer,
                      );
                    },
                  ),
                );
              },
              child: const Icon(
                Icons.search,
                color: kLightBlue,
                size: 27,
              ),
            ),
          ],
        ),
        Expanded(
          child: ListView(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10.0),
                height: screenHeight * 0.22,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: playlistNames.length,
                  itemBuilder: (context, index) {
                    String playlistName = playlistNames[index];
                    return BlocBuilder<FavRecentMostBloc, FavRecentMostState>(
                      builder: (context, state) {
                        return CustomPlayList(
                          playlistImage: (index == 0)
                              ? 'assets/images/earth.png'
                              : (index == 1)
                                  ? 'assets/images/recent.png'
                                  : 'assets/images/new.png',
                          playlistName: playlistName,
                          playlistSongLength: (playlistName == 'Favourites')
                              ? state.favSongListlength
                              : (playlistName == 'Recent')
                                  ? state.recentListLength
                                  : state.mostListLength,
                        );
                      },
                    );
                  },
                ),
              ),
              const Text(
                'All Songs',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                ),
              ),
              BlocBuilder<ScreenHomeBloc, ScreenHomeState>(
                builder: (context, state) {
                  return Container(
                    child: state.songList.isEmpty
                        ? const Text("No Songs Found")
                        : ListView.builder(
                            shrinkWrap: true,
                            physics: const ScrollPhysics(),
                            itemBuilder: (context, index) {
                              return SongListTile(
                                onPressed: () {
                                  log(state.songList.length.toString());
                                  showPlaylistModalSheet(
                                    context: context,
                                    screenHeight: screenHeight,
                                    song: state.songList[index],
                                  );
                                },
                                songList: state.songList,
                                index: index,
                                audioPlayer: audioPlayer,
                              );
                            },
                            itemCount: state.songList.length,
                          ),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
