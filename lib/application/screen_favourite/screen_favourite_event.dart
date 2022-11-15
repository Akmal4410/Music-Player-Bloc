part of 'screen_favourite_bloc.dart';

@freezed
class ScreenFavouriteEvent with _$ScreenFavouriteEvent {
  const factory ScreenFavouriteEvent.initial({required String playlistName}) =
      Initial;
}
