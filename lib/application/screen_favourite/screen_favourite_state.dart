part of 'screen_favourite_bloc.dart';

@freezed
class ScreenFavouriteState with _$ScreenFavouriteState {
  const factory ScreenFavouriteState({
    required List<Songs> favSonglist,
  }) = _ScreenFavouriteState;

  factory ScreenFavouriteState.initial() {
    return const ScreenFavouriteState(favSonglist: []);
  }
}
