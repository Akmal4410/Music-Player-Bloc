import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:music_player/application/fav_recent_most/fav_recent_most_bloc.dart';
import 'package:music_player/application/screen_created_playlist/screen_created_playlist_bloc.dart';
import 'package:music_player/domain/models/db_functions/db_function.dart';
import 'package:music_player/domain/models/songs.dart';
import 'package:music_player/presentations/alert_functions.dart';

import 'package:music_player/constants/palettes/color_palette.dart';
import 'package:music_player/presentations/widgets/created_playlist.dart';
import 'package:music_player/presentations/widgets/custom_playlist.dart';

class ScreenPlaylist extends StatelessWidget {
  Box<List> playlistBox = getPlaylistBox();
  ScreenPlaylist({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<ScreenCreatedPlaylistBloc>(context).add(
        const GetPlaylistListNames(),
      );
    });
    final screenHeight = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Your Library',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            GestureDetector(
              onTap: () {
                showCreatingPlaylistDialoge(context: context);
              },
              child: const Icon(
                Icons.add,
                color: kLightBlue,
                size: 27,
              ),
            )
          ],
        ),
        Expanded(
          child: ListView(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                height: screenHeight * 0.22,
                width: double.infinity,
                child: BlocBuilder<FavRecentMostBloc, FavRecentMostState>(
                  builder: (context, state) {
                    return ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        CustomPlayList(
                          playlistImage: 'assets/images/favourites.png',
                          playlistName: 'Favourites',
                          playlistSongLength: state.favSongListlength,
                        ),
                        CustomPlayList(
                          playlistImage: 'assets/images/recent.png',
                          playlistName: 'Recent',
                          playlistSongLength: state.recentListLength,
                        ),
                        CustomPlayList(
                          playlistImage: 'assets/images/mostPlayed.png',
                          playlistName: 'Most Played',
                          playlistSongLength: state.mostListLength,
                        ),
                      ],
                    );
                  },
                ),
              ),
              const Text(
                'Created Playlists',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 15),
              BlocBuilder<ScreenCreatedPlaylistBloc,
                  ScreenCreatedPlaylistState>(
                builder: (context, state) {
                  BlocProvider.of<ScreenCreatedPlaylistBloc>(context).add(
                    const GetPlaylistListNames(),
                  );
                  return state.playlistListNames.isEmpty
                      ? const Center(
                          child: Text('The List is Empty'),
                        )
                      : GridView.builder(
                          itemCount: state.playlistListNames.length,
                          shrinkWrap: true,
                          physics: const ScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 15,
                            crossAxisSpacing: 15,
                            childAspectRatio: 1.25,
                          ),
                          itemBuilder: (context, index) {
                            final String playlistName =
                                state.playlistListNames[index];

                            final List<Songs> songList = playlistBox
                                .get(playlistName)!
                                .toList()
                                .cast<Songs>();

                            final int songListlength = songList.length;

                            return CreatedPlaylist(
                              playlistImage: 'assets/images/earth.png',
                              playlistName: playlistName,
                              playlistSongNum: '$songListlength Songs',
                            );
                          },
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
