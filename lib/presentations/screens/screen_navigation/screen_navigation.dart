import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player/application/screen_navigation/screen_navigation_bloc.dart';
import 'package:music_player/presentations/screens/screen_home/screen_home.dart';
import 'package:music_player/presentations/screens/screen_playlist/screen_playlist.dart';
import 'package:music_player/presentations/screens/screen_setting/screen_setting.dart';

class ScreenNavigation extends StatelessWidget {
  ScreenNavigation({super.key});

  final _bottomNavBar = const <BottomNavigationBarItem>[
    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    BottomNavigationBarItem(icon: Icon(Icons.queue_music), label: 'Playlist'),
    BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
  ];

  final List<Widget> _screens = <Widget>[
    const ScreenHome(),
    ScreenPlaylist(),
    const ScreenSetting(),
  ];

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<ScreenNavigationBloc>(context)
          .add(const CheckNotification());
    });
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20, top: 10),
          child: BlocBuilder<ScreenNavigationBloc, ScreenNavigationState>(
            builder: (context, state) {
              return _screens[state.page];
            },
          ),
        ),
      ),
      bottomNavigationBar:
          BlocBuilder<ScreenNavigationBloc, ScreenNavigationState>(
        builder: (context, state) {
          return BottomNavigationBar(
            onTap: (value) {
              BlocProvider.of<ScreenNavigationBloc>(context).add(
                ChanagePage(pressedPage: value),
              );
            },
            currentIndex: state.page,
            elevation: 0,
            backgroundColor: const Color(0xFF1B262C),
            iconSize: 30,
            selectedItemColor: const Color(0xFFBBE1FA),
            unselectedItemColor: const Color(0xFF0F4C75),
            items: _bottomNavBar,
          );
        },
      ),
    );
  }
}
