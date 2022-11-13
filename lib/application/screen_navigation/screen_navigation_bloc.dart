import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:music_player/constants/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'screen_navigation_event.dart';
part 'screen_navigation_state.dart';
part 'screen_navigation_bloc.freezed.dart';

class ScreenNavigationBloc
    extends Bloc<ScreenNavigationEvent, ScreenNavigationState> {
  ScreenNavigationBloc() : super(ScreenNavigationState.initial()) {
    on<ChanagePage>((event, emit) {
      emit(
        ScreenNavigationState(page: event.pressedPage),
      );
    });

    on<CheckNotification>((event, emit) async {
      SharedPreferences sharedPrefs = await SharedPreferences.getInstance();
      SWITCHVALUE = sharedPrefs.getBool(NOTIFICATION);
      SWITCHVALUE = SWITCHVALUE ??= true;
    });
  }
}
