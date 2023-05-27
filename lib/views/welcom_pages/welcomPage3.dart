import 'package:final_project/views/registration/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../data/my_colors.dart';
import '../../widgets/welcomWidget.dart';

class WelcomPage3 extends StatefulWidget {
  @override
  State<WelcomPage3> createState() => _WelcomPage3State();
}

class _WelcomPage3State extends State<WelcomPage3> {
  @override
  Widget build(BuildContext context) {
    return
        // Column(
        //   children: [
        WeclcomWidget(
            "assets/images/myimage2.png",
            "Track your Progess",
            "When you track your progress you have facts, not subjective reflections. We often overestimate how often we do things, but tracking eliminates this.",
            Register()); //,
    // FloatingActionButton(
    //   onPressed: () {
    //     Navigator.of(context).push(MaterialPageRoute(builder: (context) {
    //       return Register();
    //     }));
    //   },
    //   child: Icon(Icons.navigate_next),
    //   backgroundColor: MyColors.purple,
    // )
    //   ],
    // );
  }
}
