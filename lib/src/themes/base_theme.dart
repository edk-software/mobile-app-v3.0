import 'package:flutter/material.dart';

class AppTheme {
  static final edkRed = Color(0xffe30a17);

  static final bottomNavigationBarBackgroundColor = Color(0xff151719);
  static final bottomNavigationBarSelectedColor = Color(0xffffffff);
  static final bottomNavigationBarUnselectedColor = Color(0xff657790);

  static ThemeData get theme {
    return ThemeData.dark().copyWith(
      primaryColor: edkRed,
      scaffoldBackgroundColor: Color(0xff212326),
    );
  }
}
