import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:music_player/domain/models/db_functions/db_function.dart';
import 'package:music_player/domain/models/songs.dart';

part 'screen_home_event.dart';
part 'screen_home_state.dart';
part 'screen_home_bloc.freezed.dart';

class ScreenHomeBloc extends Bloc<ScreenHomeEvent, ScreenHomeState> {
  ScreenHomeBloc() : super(ScreenHomeState.initial()) {
    Box<List> playlistBox = getPlaylistBox();
    on<Initailize>((event, emit) {
      emit(ScreenHomeState(
        songList: state.songList,
        playlistNames: state.playlistNames,
        favSonglength: state.favSonglength,
        recentSonglength: state.recentSonglength,
        mostSonglength: state.mostSonglength,
      ));
    });

    on<GetPlaylistLength>((event, emit) {
      return emit(ScreenHomeState(
        songList: state.songList,
        playlistNames: state.playlistNames,
        favSonglength: playlistBox.get('Favourites')!.toList().length,
        recentSonglength: playlistBox.get('Recent')!.toList().length,
        mostSonglength: playlistBox.get('Most Played')!.toList().length,
      ));
    });
  }
}
