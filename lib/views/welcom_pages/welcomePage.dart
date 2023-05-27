import 'package:final_project/views/welcom_pages/welcomPage1.dart';
import 'package:final_project/views/welcom_pages/welcomPage2.dart';
import 'package:final_project/views/welcom_pages/welcomPage3.dart';
import 'package:final_project/views/welcom_pages/welcomePage4.dart';
import 'package:flutter/material.dart';

import '../../data/my_colors.dart';
import 'FinalWelcomePage.dart';

class WelcomePage extends StatefulWidget {
  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  PageController pageController = PageController();
  int index = 0;

  @override
  Widget build(Object context) {
    return Scaffold(
        backgroundColor: MyColors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 570,
                child: PageView(
                  controller: pageController,
                  onPageChanged: (value) {
                    setState(() {
                      index = value;
                    });
                  },
                  children: [
                    WelcomPage1(),
                    WelcomPage2(),
                    WelcomPage3(),
                  ],
                ),
              ),
              if (index == 2)
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  // alignment: Alignment.bottomRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FloatingActionButton(
                        onPressed: () {
                          setState(() {});
                          pageController.previousPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.linear);
                          String a = pageController.toString();
                          print("page number : $a");
                        },
                        child: Icon(Icons.navigate_before),
                        backgroundColor: MyColors.purple,
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          setState(() {});
                          Navigator.of(this.context)
                              .push(MaterialPageRoute(builder: (context) {
                            return FinalWelcomePage();
                          }));
                        },
                        child: Icon(Icons.navigate_next),
                        backgroundColor: MyColors.purple,
                      ),
                    ],
                  ),
                ),
              if (index != 2)
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  // alignment: Alignment.bottomRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FloatingActionButton(
                        onPressed: () {
                          setState(() {});
                          pageController.previousPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.linear);
                          String a = pageController.toString();
                          print("page number : $a");
                        },
                        child: Icon(Icons.navigate_before),
                        backgroundColor: MyColors.purple,
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          setState(() {});
                          pageController.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.linear);
                          String a = pageController.toString();
                          print("page number : $a");
                        },
                        child: Icon(Icons.navigate_next),
                        backgroundColor: MyColors.purple,
                      ),
                    ],
                  ),
                )
            ],
          ),
        ));
  }
}


 // WelcomePage4(),
                    // FloatingActionButton(
                    //   onPressed: () {},
                    //   child: Icon(Icons.navigate_next),
                    //   backgroundColor: MyColors.purple,
                    // )