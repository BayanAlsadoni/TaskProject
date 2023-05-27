import 'package:final_project/views/welcom_pages/welcomPage3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../data/my_colors.dart';
import '../../widgets/welcomWidget.dart';

class WelcomPage2 extends StatefulWidget {
  @override
  State<WelcomPage2> createState() => _WelcomPage2State();
}

class _WelcomPage2State extends State<WelcomPage2> {
  @override
  Widget build(BuildContext context) {
    return
        // Column(
        //   children: [
        WeclcomWidget(
            "assets/images/image3.jpg",
            "Manage your time",
            "Creating an environment that enables you plan and exercise conscious control of time spent on activities, to increase effectiveness, efficiency, and productivity.",
            WelcomPage3());
    // FloatingActionButton(
    //   onPressed: () {
    //     Navigator.of(context).push(MaterialPageRoute(builder: (context) {
    //       return WelcomPage3();
    //     }));
    //   },
    //   child: Icon(Icons.navigate_next),
    //   backgroundColor: MyColors.purple,
    // )
    //   ],
    // );
  }
}
