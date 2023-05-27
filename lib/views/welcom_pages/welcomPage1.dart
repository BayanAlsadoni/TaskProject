import 'package:final_project/views/welcom_pages/welcomPage2.dart';
import 'package:final_project/widgets/welcomWidget.dart';
import 'package:flutter/material.dart';

class WelcomPage1 extends StatefulWidget {
  @override
  State<WelcomPage1> createState() => _WelcomPage1State();
}

class _WelcomPage1State extends State<WelcomPage1> {
  @override
  Widget build(BuildContext context) {
    return WeclcomWidget(
        "assets/images/myimage1.png",
        "Manage your task",
        "Welcome to a world that enables you plan, scehdule your tasks and meet all your targets easily.",
        WelcomPage2());
  }
}
