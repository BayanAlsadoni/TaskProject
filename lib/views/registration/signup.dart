import 'package:final_project/models/db_helper.dart';
import 'package:final_project/views/home.dart';
import 'package:final_project/views/registration/signin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../data/my_colors.dart';
import '../../data/user.dart';
import '../../models/provider.dart';
import '../../widgets/button_style.dart';
import '../../widgets/text_field_style.dart';

class Register extends StatefulWidget {
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Consumer<MyProvider>(builder: (context, provider, x) {
      return Scaffold(
        backgroundColor: MyColors.white,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(30, 50, 30, 0),
            margin: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                MyTextFieldStyle(
                    textEditingController: provider.userName,
                    hintText: "Enter your name"),
                SizedBox(
                  height: 10,
                ),
                // Text("Enter your email"),
                MyTextFieldStyle(
                  textEditingController: provider.userEmail,
                  hintText: "Enter your email",
                ),
                SizedBox(
                  height: 10,
                ),
                // Text("Enter your phone"),
                // MyTextFieldStyle(
                // hintText: "Enter your phone",
                // ),
                // Text("Enter your password"),
                MyTextFieldStyle(
                  textEditingController: provider.userPassword,
                  hintText: "Enter your password",
                ),
                SizedBox(
                  height: 60,
                ),
                // MyButtonStyle("Register", HomePage()),
                ElevatedButton(
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => MyColors.purple)),
                    onPressed: () {
                      // await provider.insertNewUser();
                      DBHelper.dbHelper.insertUse(User(
                          name: provider.userName.text,
                          email: provider.userEmail.text,
                          password: provider.userPassword.text));
                      print("in signup ${provider.users}");
                      print("in signup email ${provider.userEmail.text}");
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return HomePage();
                      }));
                    },
                    child: Text("Reguster")),
                Row(
                  children: [
                    Text("you already have an account?"),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return Login();
                          }));
                        },
                        child: Text(
                          "Login Now",
                          style: TextStyle(color: MyColors.purple),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
