import 'package:flutter/material.dart';

class ColorName {
  // String colorString = "";
  // Color color = Colors.blueGrey;
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
        return Colors.blueGrey;
    }
  }

  String fruit = 'banana';

  a() {
    switch (fruit) {
      case 'apple':
        print('You selected an apple');
        break;
      case 'banana':
        print('You selected a banana');
        break;
      case 'orange':
        print('You selected an orange');
        break;
      default:
        print('Invalid fruit selection');
    }
  }
}
