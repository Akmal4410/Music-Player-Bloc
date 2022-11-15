part of 'fav_recent_most_bloc.dart';

@freezed
class FavRecentMostState with _$FavRecentMostState {
  const factory FavRecentMostState({
    required List<Songs> favSongList,
    required List<Songs> recentList,
    required List<Songs> mostList,
  }) = _Initial;

  factory FavRecentMostState.initial() {
    return const FavRecentMostState(
      favSongList: [],
      recentList: [],
      mostList: [],
    );
  }
}
