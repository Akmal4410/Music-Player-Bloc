import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:music_player/domain/models/db_functions/db_function.dart';
import 'package:music_player/domain/models/songs.dart';

part 'screen_favourite_event.dart';
part 'screen_favourite_state.dart';
part 'screen_favourite_bloc.freezed.dart';

class ScreenFavouriteBloc
    extends Bloc<ScreenFavouriteEvent, ScreenFavouriteState> {
  ScreenFavouriteBloc() : super(ScreenFavouriteState.initial()) {
    Box<List> playlistBox = getPlaylistBox();
    on<Initial>((event, emit) {
      emit(ScreenFavouriteState(
        favSonglist:
            playlistBox.get(event.playlistName)!.toList().cast<Songs>(),
      ));
    });
  }
}
