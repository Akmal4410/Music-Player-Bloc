import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:music_player/constants/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
part 'screen_setting_event.dart';
part 'screen_setting_state.dart';
part 'screen_setting_bloc.freezed.dart';

class ScreenSettingBloc extends Bloc<ScreenSettingEvent, ScreenSettingState> {
  final AssetsAudioPlayer audioPlayer = AssetsAudioPlayer.withId('0');

  ScreenSettingBloc() : super(ScreenSettingState.initial()) {
    on<GetNotification>((event, emit) async {
      SWITCHVALUE = event.newValue;
      SWITCHVALUE!
          ? audioPlayer.showNotification = true
          : audioPlayer.showNotification = false;

      SharedPreferences sharedPrefs = await SharedPreferences.getInstance();
      await sharedPrefs.setBool(NOTIFICATION, SWITCHVALUE!);
      emit(ScreenSettingState(value: SWITCHVALUE!));
    });
  }
}
