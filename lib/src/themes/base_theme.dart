import 'package:flutter/material.dart';

class AppTheme {
  static final edkRed = Color(0xFFE30A17);

  static final bottomNavigationBarBackgroundColor = Color(0xFF121519);
  static final bottomNavigationBarSelectedColor = Color(0xFFF6F7FA);
  static final bottomNavigationBarUnselectedColor = Color(0xFF52606D);

  static ThemeData get theme {
    return ThemeData.dark().copyWith(
      primaryColor: edkRed,
      scaffoldBackgroundColor: Color(0xFF1B1E22),
    );
  }
}
