part of 'screen_home_bloc.dart';

@freezed
class ScreenHomeState with _$ScreenHomeState {
  const factory ScreenHomeState({
    required List<Songs> songList,
    required List playlistName,
    required int favSonglength,
    required int recentSonglength,
    required int mostSonglength,
  }) = _ScreenHomeState;

  factory ScreenHomeState.initial() {
    Box<Songs> songBox = getSongBox();
    Box<List> playlistBox = getPlaylistBox();
    return ScreenHomeState(
      songList: songBox.values.toList(),
      playlistName: playlistBox.keys.toList(),
      recentSonglength: 0,
      mostSonglength: 0,
      favSonglength: 0,
    );
  }
}
