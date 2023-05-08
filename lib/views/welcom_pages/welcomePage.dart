import 'package:final_project/views/welcom_pages/welcomPage1.dart';
import 'package:final_project/views/welcom_pages/welcomPage2.dart';
import 'package:final_project/views/welcom_pages/welcomPage3.dart';
import 'package:final_project/views/welcom_pages/welcomePage4.dart';
import 'package:flutter/material.dart';

import '../../data/my_colors.dart';
import 'FinalWelcomePage.dart';

class WelcomePage extends StatelessWidget {
  PageController pageController = PageController();
  @override
  Widget build(Object context) {
    return Scaffold(
        backgroundColor: MyColors.white,
        body: PageView(
          controller: pageController,
          children: [
            WelcomPage1(),
            WelcomPage2(),
            WelcomPage3(),
            // WelcomePage4(),
          ],
        ));
  }
}
