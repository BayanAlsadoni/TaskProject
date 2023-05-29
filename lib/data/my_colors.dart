import 'dart:ui';

import 'package:flutter/material.dart';

class MyColors {
  // String? color;
  // MyColors({this.color});

  static Color broun = Color.fromARGB(255, 42, 27, 28);
  static Color broun2 = Color.fromARGB(255, 23, 12, 14);
  static Color offWhite = Color.fromARGB(255, 255, 246, 237);

  static Color purple = Color.fromARGB(255, 116, 91, 242);
  static Color purple2 = Color.fromARGB(255, 142, 140, 245);
  static Color purple3 = Color.fromARGB(255, 204, 196, 255);
  static Color purple4 = Color.fromARGB(255, 213, 191, 227);
  static Color purple5 = Color.fromARGB(255, 176, 139, 202);
  static Color green = Color.fromARGB(255, 203, 254, 217);
  static Color gray = Color.fromARGB(255, 67, 67, 67);
  static Color blue_purple = Color.fromARGB(255, 143, 155, 179);
  static Color off_white = Color.fromARGB(255, 246, 246, 245);
  static Color white_gray = Color.fromARGB(255, 244, 244, 244);

  static Color whiteOrange = Color.fromARGB(255, 255, 216, 168);
  static Color orange = Color.fromARGB(255, 218, 122, 74);
  static Color white = Colors.white;

  static Color convertColor(String colorString) {
    switch (colorString) {
      case "blue":
        return Colors.blue;

      case "red":
        return Colors.redAccent;

      case "green":
        return Colors.greenAccent;

      case "orange":
        return Colors.orange;

      case "brown":
        return Colors.brown;

      case "yellow":
        return Colors.yellowAccent;
      default:
        return MyColors.blue_purple;
    }
  }
}
