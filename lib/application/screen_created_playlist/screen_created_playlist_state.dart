part of 'screen_created_playlist_bloc.dart';

@freezed
class ScreenCreatedPlaylistState with _$ScreenCreatedPlaylistState {
  const factory ScreenCreatedPlaylistState({
    required String playlistName,
    required List<Songs> playlistSongs,
    required List playlistListNames,
  }) = _ScreenCreatedPlaylistState;

  factory ScreenCreatedPlaylistState.initial() {
    return const ScreenCreatedPlaylistState(
      playlistName: '',
      playlistSongs: [],
      playlistListNames: [],
    );
  }
}
