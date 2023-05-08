import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'data/my_colors.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    // backgroundColor: MyColors.white,
    // body:
    return Scaffold(
      backgroundColor: MyColors.purple,
      body: Column(
        // verticalDirection: VerticalDirection.up,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [
          Image.asset(
            "assets/images/note_logo.png",
            height: 500,
            width: 500,
            alignment: Alignment.center,
          ),
          // Text(
          //   "Coffee Home",
          //   style: TextStyle(color: MyColors.broun, fontSize: 20),
          //   textAlign: TextAlign.center,
          // ),
        ],
      ),
    );
  }
}
