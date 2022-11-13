part of 'screen_navigation_bloc.dart';

@freezed
class ScreenNavigationEvent with _$ScreenNavigationEvent {
  const factory ScreenNavigationEvent.chanagePage({required int pressedPage}) =
      ChanagePage;
  const factory ScreenNavigationEvent.checkNotification() = CheckNotification;
}
