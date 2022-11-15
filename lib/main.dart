import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:music_player/application/screen_created_playlist/screen_created_playlist_bloc.dart';
import 'package:music_player/application/screen_favourite/screen_favourite_bloc.dart';
import 'package:music_player/application/screen_home/screen_home_bloc.dart';
import 'package:music_player/application/screen_navigation/screen_navigation_bloc.dart';
import 'package:music_player/application/screen_search/screen_search_bloc.dart';
import 'package:music_player/application/screen_setting/screen_setting_bloc.dart';
import 'package:music_player/constants/palettes/color_palette.dart';
import 'package:music_player/domain/models/songs.dart';
import 'package:music_player/presentations/screens/screen_splash/screen_splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(0)) {
    Hive.registerAdapter(SongsAdapter());
  }
  await Hive.openBox<Songs>("Songs");
  await Hive.openBox<List>("Playlist");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ScreenNavigationBloc()),
        BlocProvider(create: (context) => ScreenHomeBloc()),
        BlocProvider(create: (context) => ScreenSettingBloc()),
        BlocProvider(create: (context) => ScreenSearchBloc()),
        BlocProvider(create: (context) => ScreenCreatedPlaylistBloc()),
        BlocProvider(create: (context) => ScreenFavouriteBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xFF1B262C),
          textTheme: const TextTheme(
            bodyText2: TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
            ),
            subtitle1: TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
            ),
            caption: TextStyle(
              color: kLightBlue,
              fontFamily: 'Poppins',
            ),
            headline6: TextStyle(
              fontFamily: 'Poppins',
            ),
          ),
        ),
        home: const ScreenSplash(),
      ),
    );
  }
}
