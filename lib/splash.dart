import 'package:final_project/views/registration/signup.dart';
import 'package:final_project/views/welcom_pages/FinalWelcomePage.dart';
import 'package:final_project/views/welcom_pages/welcomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'data/my_colors.dart';
import 'models/sp_helper.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  navigationFun(BuildContext context) async {
    await Future.delayed(Duration(seconds: 3));
    // bool result = SpHelper.checkFirstTime();
    // if (result) {
    // navigate to new user
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
      return WelcomePage();
    }));
    // } else {
    //   //navigate to old user
    //   Navigator.of(context)
    //       .pushReplacement(MaterialPageRoute(builder: (context) {
    //     return FinalWelcomePage();
    //   }));
    // }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigationFun(context);
  }

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
