import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player/application/screen_setting/screen_setting_bloc.dart';
import 'package:music_player/constants/palettes/color_palette.dart';
import 'package:music_player/presentations/screens/screen_setting_tile/screen_setting_tile.dart';
import 'package:music_player/presentations/widgets/setting_list_tile.dart';
import 'package:share_plus/share_plus.dart';

class ScreenSetting extends StatelessWidget {
  const ScreenSetting({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {});
    final screenHeight = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Settings',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 15),
              SettingListTile(
                labeltext: 'About me',
                icon: Icons.person,
                onTap: () {
                  showAboutMeDialoge(
                    context: context,
                    screenHeight: screenHeight,
                  );
                },
              ),
              SettingListTile(
                labeltext: 'Share',
                icon: Icons.share,
                onTap: () async {
                  await Share.share(
                    'Download Musique from Playstore For Free \nWith Musique you can play the device music and get the lyrics of the known artist.Download Now On Playstore',
                  );
                },
              ),
              SettingListTile(
                labeltext: 'Notifications',
                icon: Icons.notifications,
                trailingWidget:
                    BlocBuilder<ScreenSettingBloc, ScreenSettingState>(
                  builder: (context, state) {
                    return Switch(
                      value: state.value,
                      onChanged: (newValue) {
                        BlocProvider.of<ScreenSettingBloc>(context)
                            .add(GetNotification(newValue: newValue));
                      },
                    );
                  },
                ),
              ),
              SettingListTile(
                labeltext: 'Privacy Policy',
                icon: Icons.security,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return ScreenSettingTile(screenName: 'Privacy Policy');
                    }),
                  );
                },
              ),
              SettingListTile(
                labeltext: 'Terms and Conditions',
                icon: Icons.security,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return ScreenSettingTile(
                          screenName: 'Terms and Conditions');
                    }),
                  );
                },
              ),
              SettingListTile(
                labeltext: 'License',
                icon: Icons.warning,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Theme(
                          data: ThemeData(
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
                            cardColor: kBackgroundColor,
                            appBarTheme: const AppBarTheme(
                              backgroundColor: kBackgroundColor,
                              elevation: 0,
                            ),
                          ),
                          child: const LicensePage(
                            applicationName: 'MUSIQUE',
                            applicationVersion: '1.0.0',
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        Column(
          children: const [
            Text(
              'Version',
              style: TextStyle(
                color: kLightBlue,
                fontSize: 16,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Text(
                '1.0.0',
                style: TextStyle(
                  color: kLightBlue,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

showAboutMeDialoge(
    {required BuildContext context, required double screenHeight}) {
  showDialog(
      context: context,
      builder: (ctx) {
        return Dialog(
          backgroundColor: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            height: 200,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: const [
                  Text(
                    'About Me',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        'This App is designed and developed by Mohammed Akmal',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      });
}
