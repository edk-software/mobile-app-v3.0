import 'package:edk_mobile_v3/src/screens/edk/edk_screen.dart';
import 'package:edk_mobile_v3/src/screens/meditations/meditations_screen.dart';
import 'package:edk_mobile_v3/src/screens/routes/routes_screen.dart';
import 'package:edk_mobile_v3/src/screens/support/support_screen.dart';
import 'package:edk_mobile_v3/src/themes/base_theme.dart';
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
      theme: AppTheme.theme,
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
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppTheme.bottomNavigationBarBackgroundColor,
        selectedItemColor: AppTheme.bottomNavigationBarSelectedColor,
        unselectedItemColor: AppTheme.bottomNavigationBarUnselectedColor,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            title: Text(EDKLocalizations.of(context).edk),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            title: Text(EDKLocalizations.of(context).routes),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.playlist_play),
            title: Text(EDKLocalizations.of(context).meditations),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on),
            title: Text(EDKLocalizations.of(context).support),
          ),
        ],
      ),
    );
  }
}
