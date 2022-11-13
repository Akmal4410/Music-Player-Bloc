import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:music_player/domain/models/db_functions/db_function.dart';
import 'package:music_player/domain/models/songs.dart';
import 'package:music_player/presentations/alert_functions.dart';
import 'package:music_player/functions/favourites.dart';
import 'package:music_player/functions/recents.dart';
import 'package:music_player/constants/palettes/color_palette.dart';
import 'package:on_audio_query/on_audio_query.dart';

class SongListTile extends StatefulWidget {
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
  State<SongListTile> createState() => _SongListTileState();
}

class _SongListTileState extends State<SongListTile> {
  Box<Songs> songBox = getSongBox();
  Box<List> playlistBox = getPlaylistBox();

  @override
  void initState() {
    super.initState();
    setState(() {
      Favourites.isThisFavourite(id: widget.songList[widget.index].id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Recents.addSongsToRecents(songId: widget.songList[widget.index].id);
        showMiniPlayer(
          context: context,
          index: widget.index,
          songList: widget.songList,
          audioPlayer: widget.audioPlayer,
        );
      },
      contentPadding: const EdgeInsets.all(0),
      leading: QueryArtworkWidget(
        artworkBorder: BorderRadius.circular(10),
        id: int.parse(widget.songList[widget.index].id),
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
        widget.songList[widget.index].title,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        widget.songList[widget.index].artist == '<unknown>'
            ? 'Unknown'
            : widget.songList[widget.index].artist,
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
            onPressed: widget.onPressed,
            icon: Icon(
              widget.icon,
              color: kLightBlue,
              size: 27,
            ),
          ),
          IconButton(
            onPressed: () {
              Favourites.addSongToFavourites(
                context: context,
                id: widget.songList[widget.index].id,
              );
              setState(() {
                Favourites.isThisFavourite(
                  id: widget.songList[widget.index].id,
                );
              });
            },
            icon: Icon(
              Favourites.isThisFavourite(
                id: widget.songList[widget.index].id,
              ),
              color: kLightBlue,
              size: 25,
            ),
          )
        ],
      ),
    );
  }
}