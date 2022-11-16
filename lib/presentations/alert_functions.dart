// ignore_for_file: use_build_context_synchronously

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:music_player/application/screen_created_playlist/screen_created_playlist_bloc.dart';
import 'package:music_player/domain/models/db_functions/db_function.dart';
import 'package:music_player/domain/models/songs.dart';
import 'package:music_player/functions/playlist.dart';

import 'package:music_player/constants/palettes/color_palette.dart';
import 'package:music_player/presentations/widgets/mini_player.dart';
import 'package:music_player/presentations/widgets/search_widget.dart';
import 'package:on_audio_query/on_audio_query.dart';

showMiniPlayer({
  required BuildContext context,
  required int index,
  required List<Songs> songList,
  required AssetsAudioPlayer audioPlayer,
}) {
  return showBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (ctx) {
        return MiniPlayer(
          songList: songList,
          index: index,
          audioPlayer: audioPlayer,
        );
      });
}

showPlaylistModalSheet({
  required BuildContext context,
  required double screenHeight,
  required Songs song,
}) {
  BlocProvider.of<ScreenCreatedPlaylistBloc>(context).add(
    const GetPlaylistListNames(),
  );
  return showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (ctx) {
        return Container(
          decoration: BoxDecoration(
            color: kDarkBlue,
            borderRadius: BorderRadius.circular(30),
          ),
          height: screenHeight * 0.55,
          child: Column(
            children: [
              const SizedBox(height: 10),
              ElevatedButton.icon(
                onPressed: () {
                  showCreatingPlaylistDialoge(context: ctx);
                },
                icon: const Icon(
                  Icons.playlist_add,
                  color: kDarkBlue,
                ),
                label: const Text(
                  'Create Playlist',
                  style: TextStyle(color: kDarkBlue),
                ),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10),
                  backgroundColor: kLightBlue,
                  shape: const StadiumBorder(),
                ),
              ),
              BlocBuilder<ScreenCreatedPlaylistBloc,
                  ScreenCreatedPlaylistState>(
                builder: (context, state) {
                  return Expanded(
                    child: (state.playlistListNames.isEmpty)
                        ? const Center(
                            child: Text("No Playlist Found"),
                          )
                        : ListView.builder(
                            itemCount: state.playlistListNames.length,
                            itemBuilder: (ctx, index) {
                              final String playlistKey =
                                  state.playlistListNames[index];

                              return Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 2),
                                margin: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: ListTile(
                                  onTap: () async {
                                    UserPlaylist.addSongToPlaylist(
                                        context: context,
                                        songId: song.id,
                                        playlistName: playlistKey);

                                    Navigator.pop(context);
                                  },
                                  leading: const Text(
                                    '🎧',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  title: Text(playlistKey),
                                ),
                              );
                            },
                          ),
                  );
                },
              )
            ],
          ),
        );
      });
}

showCreatingPlaylistDialoge({required BuildContext context}) {
  TextEditingController textEditingController = TextEditingController();
  Box<List> playlistBox = getPlaylistBox();

  Future<void> createNewplaylist() async {
    List<Songs> songList = [];
    final String playlistName = textEditingController.text.trim();
    if (playlistName.isEmpty) {
      return;
    }
    await playlistBox.put(playlistName, songList);
    BlocProvider.of<ScreenCreatedPlaylistBloc>(context).add(
      const GetPlaylistListNames(),
    );
  }

  return showDialog(
      context: context,
      builder: (BuildContext ctx) {
        final formKey = GlobalKey<FormState>();
        return Form(
          key: formKey,
          child: AlertDialog(
            backgroundColor: kLightBlue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            title: const Text(
              'Create playlist',
              style: TextStyle(
                  color: kDarkBlue, fontSize: 16, fontWeight: FontWeight.w600),
            ),
            content: SearchField(
              textController: textEditingController,
              hintText: 'Playlist Name',
              icon: Icons.playlist_add,
              validator: (value) {
                final keys = getPlaylistBox().keys.toList();
                if (value == null || value.isEmpty) {
                  return 'Field is empty';
                }
                if (keys.contains(value)) {
                  return '$value Already exist in playlist';
                }
                return null;
              },
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(ctx);
                },
                child: const Text(
                  'Cancel',
                  style: TextStyle(color: kDarkBlue, fontSize: 15),
                ),
              ),
              TextButton(
                onPressed: () async {
                  if (formKey.currentState!.validate()) {
                    await createNewplaylist();
                    Navigator.pop(ctx);
                  }
                },
                child: const Text(
                  'Confirm',
                  style: TextStyle(color: kDarkBlue, fontSize: 15),
                ),
              ),
            ],
          ),
        );
      });
}

showPlaylistDeleteAlert({required BuildContext context, required String key}) {
  final playlistBox = getPlaylistBox();
  return showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          backgroundColor: kLightBlue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          title: const Text(
            'Confirm Deletion',
            style: TextStyle(color: kDarkBlue),
          ),
          content: const Text(
            'Do you want to delete this Playlist',
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
                await playlistBox.delete(key);
                Navigator.pop(ctx);
                BlocProvider.of<ScreenCreatedPlaylistBloc>(context).add(
                  const GetPlaylistListNames(),
                );
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

showSongModalSheet({
  required BuildContext context,
  required double screenHeight,
  required String playlistKey,
}) {
  return showModalBottomSheet(
    backgroundColor: Colors.transparent,
    context: context,
    builder: (ctx) {
      final songBox = getSongBox();
      return Container(
        decoration: BoxDecoration(
          color: kDarkBlue,
          borderRadius: BorderRadius.circular(30),
        ),
        height: screenHeight * 0.55,
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Add Songs',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: songBox.values.length,
                itemBuilder: (BuildContext ctx, int index) {
                  final List<Songs> songsList = songBox.values.toList();
                  final Songs song = songsList[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3),
                    child: ListTile(
                      onTap: () {
                        UserPlaylist.addSongToPlaylist(
                          context: context,
                          songId: song.id,
                          playlistName: playlistKey,
                        );

                        Navigator.pop(context);
                      },
                      leading: QueryArtworkWidget(
                        id: int.parse(song.id),
                        type: ArtworkType.AUDIO,
                        artworkBorder: BorderRadius.circular(10),
                        nullArtworkWidget: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/images/musicHome.png',
                            fit: BoxFit.cover,
                            height: 50,
                            width: 50,
                          ),
                        ),
                      ),
                      title: Text(
                        song.title,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      );
    },
  );
}
