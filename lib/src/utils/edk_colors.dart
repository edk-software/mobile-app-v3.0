import 'package:flutter/material.dart';

// Some color names courtesy of http://chir.ag/projects/name-that-color/

class EDKColor {
  static Color get red => fromHex('E30A17');

  static Color get whisper => fromHex('F6F7FA');
  static Color get woodsmoke => fromHex('121519');
  static Color get shuttleGray => fromHex('52606D');
  static Color get slateGray => fromHex('7C8794');
  static Color get shark => fromHex('1B1E22');

  static Color fromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return Color(int.tryParse(hexColor, radix: 16) ?? 0x00000000);
  }
}
