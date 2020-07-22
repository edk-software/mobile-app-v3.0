import 'package:edk_mobile_v3/src/repository/repository.dart';
import 'package:edk_mobile_v3/src/screens/edk/edk_screen.dart';
import 'package:edk_mobile_v3/src/screens/meditations/meditations_screen.dart';
import 'package:edk_mobile_v3/src/screens/routes/routes_screen.dart';
import 'package:edk_mobile_v3/src/screens/support/support_screen.dart';
import 'package:edk_mobile_v3/src/utils/edk_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'i18n/localizations.dart';
import 'i18n/localizations_delegate.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        const EDKLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('pl'),
        const Locale('en'),
      ],
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  int _currentIndex = 0;

  final List<Widget> screens = [
    EdkScreen(),
    RoutesScreen(),
    MeditationsScreen(),
    SupportScreen(),
  ];

  @override
  void initState() {
    super.initState();

    Repository();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: EDKColor.shark,
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: EDKColor.woodsmoke,
        selectedItemColor: EDKColor.whisper,
        unselectedItemColor: EDKColor.shuttleGray,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          bottomNavigationBarItem(
            0,
            "assets/images/edk.png",
            EDKLocalizations.of(context).edk(),
          ),
          bottomNavigationBarItem(
            1,
            "assets/images/map.png",
            EDKLocalizations.of(context).routes(),
          ),
          bottomNavigationBarItem(
            2,
            "assets/images/music_list.png",
            EDKLocalizations.of(context).meditations(),
          ),
          bottomNavigationBarItem(
            3,
            "assets/images/support.png",
            EDKLocalizations.of(context).support(),
          ),
        ],
      ),
    );
  }

  BottomNavigationBarItem bottomNavigationBarItem(
      int index, String imagePath, String text) {
    return BottomNavigationBarItem(
      icon: Image.asset(
        imagePath,
        color: _currentIndex == index ? EDKColor.whisper : EDKColor.shuttleGray,
        colorBlendMode: BlendMode.srcIn,
      ),
      title: Text(text),
    );
  }
}
