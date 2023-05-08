import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FinalWelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/welcom choice register.jpg"),
        Text("Welcome to CoffeHouse"),
        Text(
            "There are things worth being loyal to, surely. \n For example, coffe."),
        ElevatedButton(onPressed: () {}, child: Text("Login")),
        ElevatedButton(onPressed: () {}, child: Text("register"))
      ],
    );
  }
}
