import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player/application/fav_recent_most/fav_recent_most_bloc.dart';
import 'package:music_player/domain/models/songs.dart';
import 'package:music_player/presentations/alert_functions.dart';
import 'package:music_player/functions/favourites.dart';
import 'package:music_player/functions/recents.dart';
import 'package:music_player/constants/palettes/color_palette.dart';
import 'package:on_audio_query/on_audio_query.dart';

class SongListTile extends StatelessWidget {
  const SongListTile({
    Key? key,
    this.icon = Icons.playlist_add,
    required this.onPressed,
    required this.songList,
    required this.index,
    required this.audioPlayer,
  }) : super(key: key);

  final IconData icon;
  final void Function()? onPressed;
  final int index;
  final AssetsAudioPlayer audioPlayer;
  final List<Songs> songList;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {});
    return ListTile(
      onTap: () {
        Recents.addSongsToRecents(songId: songList[index].id);
        showMiniPlayer(
          context: context,
          index: index,
          songList: songList,
          audioPlayer: audioPlayer,
        );
      },
      contentPadding: const EdgeInsets.all(0),
      leading: QueryArtworkWidget(
        artworkBorder: BorderRadius.circular(10),
        id: int.parse(songList[index].id),
        type: ArtworkType.AUDIO,
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
        songList[index].title,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        songList[index].artist == '<unknown>'
            ? 'Unknown'
            : songList[index].artist,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        style: const TextStyle(
          fontSize: 13,
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            padding: const EdgeInsets.only(left: 0),
            onPressed: onPressed,
            icon: Icon(
              icon,
              color: kLightBlue,
              size: 27,
            ),
          ),
          BlocBuilder<FavRecentMostBloc, FavRecentMostState>(
            builder: (context, state) {
              return IconButton(
                onPressed: () {
                  Favourites.addSongToFavourites(
                    context: context,
                    id: songList[index].id,
                  );
                  BlocProvider.of<FavRecentMostBloc>(context).add(
                    const GetSongsList(),
                  );
                },
                icon: Icon(
                  state.favSongList
                          .where((song) => song.id == songList[index].id)
                          .isEmpty
                      ? Icons.favorite_outline_rounded
                      : Icons.favorite_rounded,
                  color: kLightBlue,
                  size: 25,
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
