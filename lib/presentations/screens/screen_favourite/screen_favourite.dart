import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:music_player/application/screen_favourite/screen_favourite_bloc.dart';
import 'package:music_player/domain/models/db_functions/db_function.dart';
import 'package:music_player/domain/models/songs.dart';
import 'package:music_player/presentations/alert_functions.dart';
import 'package:music_player/constants/palettes/color_palette.dart';
import 'package:music_player/presentations/widgets/song_list_tile.dart';

class ScreenFavourites extends StatelessWidget {
  ScreenFavourites({super.key, required this.playlistName});
  final String playlistName;

  final Box<List> playlistBox = getPlaylistBox();
  final Box<Songs> songBox = getSongBox();

  final AssetsAudioPlayer audioPlayer = AssetsAudioPlayer.withId('0');

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<ScreenFavouriteBloc>(context)
          .add(Initial(playlistName: playlistName));
    });
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          playlistName,
          style: const TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              icon: const Icon(Icons.clear_all),
              onPressed: () {
                showClearAlert(context: context, key: playlistName);
              },
            ),
          ),
        ],
      ),
      body: BlocBuilder<ScreenFavouriteBloc, ScreenFavouriteState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 10),
            child: state.favSonglist.isEmpty
                ? const Center(
                    child: Text('The List is Empty'),
                  )
                : ListView.builder(
                    itemCount: state.favSonglist.length,
                    itemBuilder: (context, index) {
                      return SongListTile(
                        onPressed: () {
                          showPlaylistModalSheet(
                            context: context,
                            screenHeight: screenHeight,
                            song: state.favSonglist[index],
                          );
                        },
                        songList: state.favSonglist,
                        index: index,
                        audioPlayer: audioPlayer,
                      );
                    },
                  ),
          );
        },
      ),
    );
  }

  showClearAlert({required BuildContext context, required String key}) {
    final playlistBox = getPlaylistBox();

    return showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            backgroundColor: kLightBlue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            title: Text(
              'Clear $playlistName',
              style: TextStyle(color: kDarkBlue),
            ),
            content: Text(
              'Do you want to clear $playlistName',
              style: TextStyle(color: kDarkBlue),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(ctx);
                },
                child: const Text(
                  'Cancel',
                  style: TextStyle(
                    color: kDarkBlue,
                    fontSize: 15,
                  ),
                ),
              ),
              TextButton(
                onPressed: () async {
                  List<Songs> dbSongs = songBox.values.toList().cast<Songs>();

                  await songBox.clear();

                  for (var item in dbSongs) {
                    Songs song = Songs(
                      id: item.id,
                      title: item.title,
                      artist: item.artist,
                      uri: item.uri,
                      count: 0,
                    );
                    await songBox.put(song.id, song);
                  }
                  await playlistBox.put(playlistName, []);
                  Navigator.pop(ctx);
                },
                child: const Text(
                  'OK',
                  style: TextStyle(
                    color: kDarkBlue,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          );
        });
  }
}
