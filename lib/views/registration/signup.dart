import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../data/my_colors.dart';
import '../../widgets/button_style.dart';
import '../../widgets/text_field_style.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(30, 50, 30, 0),
          margin: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Image.asset(
              //   "assets/images/welcome image find.png",
              //   height: 200,
              // ),
              Text(
                "Hello! \nSignup to \nget started",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              // Text("Enter your name"),
              MyTextFieldStyle(hintText: "Enter your name"),
              // Text("Enter your email"),
              MyTextFieldStyle(
                hintText: "Enter your email",
              ),
              // Text("Enter your phone"),
              // MyTextFieldStyle(
              // hintText: "Enter your phone",
              // ),
              // Text("Enter your password"),
              MyTextFieldStyle(
                hintText: "Enter your password",
              ),
              MyButtonStyle("Register"),
              // ElevatedButton(onPressed: () {}, child: Text("Reguster")),
              Row(
                children: [
                  Text("you already have an account?"),
                  TextButton(onPressed: () {}, child: Text("Login Now"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
