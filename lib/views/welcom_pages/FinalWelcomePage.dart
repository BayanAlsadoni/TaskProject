import 'package:final_project/views/registration/signin.dart';
import 'package:final_project/views/registration/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/button_style.dart';

class FinalWelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Image.asset("assets/images/boy_read_in_tree.png"),
          SizedBox(
            height: 10,
          ),
          Text(
            "Welcome to CoffeHouse",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
              textAlign: TextAlign.center,
              "There are things worth being loyal to, surely. \n For example, coffe."),
          SizedBox(
            height: 10,
          ),
          Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(15, 15, 15, 5),
              child: MyButtonStyle("Register", Register())),
          Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(15, 5, 15, 5),
              child: MyButtonStyle("Login", Login())),
          //   ElevatedButton(onPressed: () {}, child: Text("Login")),
          //   ElevatedButton(onPressed: () {}, child: Text("register"))
        ],
      ),
    );
  }
}
