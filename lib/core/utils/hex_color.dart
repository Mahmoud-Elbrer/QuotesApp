import 'package:flutter/material.dart';

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.isEmpty) {
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }
}
