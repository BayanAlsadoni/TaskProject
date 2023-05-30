import 'dart:ui';

import 'package:final_project/views/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../data/my_colors.dart';
import '../../data/user.dart';
import '../../models/provider.dart';
import '../../widgets/button_style.dart';
import '../../widgets/text_field_style.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<MyProvider>(builder: (context, provider, x) {
      return Scaffold(
        backgroundColor: MyColors.white,
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 30,
                ),
                // Image.asset("assets/images/image login.png"),

                Text(
                  "Hello Again! \nWelcome \nBack",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    // fontFamily: "Arial"
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 30,
                ),
                // TextField(),
                MyTextFieldStyle(
                  textEditingController: provider.userEmail,
                  hintText: "Email Address",
                ),
                // SizedBox(
                //   width: double.infinity,
                //   height: 0,
                // ),
                // TextField(),
                MyTextFieldStyle(
                  textEditingController: provider.userPassword,
                  hintText: "Password",
                ),
                SizedBox(
                  width: double.infinity,
                  height: 70,
                ),
                // MyButtonStyle("Login", HomePage()),

                Container(
                  decoration: BoxDecoration(
                      color: MyColors.purple,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextButton(
                      // style: TextButton.styleFrom(
                      // textStyle: TextStyle(color: Colors.white),
                      // backgroundColor: MyColors.broun,
                      // fixedSize: Size(double.infinity, double.infinity),
                      // alignment: Alignment.bottomCenter
                      // ),
                      onPressed: () {
                        print("in btn");
                        List<User> users = provider.users;
                        print("in btn $users");
                        for (User user in users) {
                          print("in login ${user.email}");
                          if (provider.userEmail == user.email) {
                            if (provider.userPassword == user.password) {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return HomePage();
                              }));
                            }
                          }
                        }
                      },
                      child: Text(
                        "Register Now",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                        // textAlign: TextAlign.start,
                      )),
                ),

                SizedBox(
                  width: double.infinity,
                  height: 30,
                ),

                // Expanded(
                //   // height: double.infinity,
                //   // alignment: Alignment.bottomCenter,

                //   child: Row(
                //     crossAxisAlignment: CrossAxisAlignment.center,
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     // mainAxisSize: MainAxisSize.max,
                //     // verticalDirection: VerticalDirection.down,
                //     children: [
                //       Text(
                //         "Don't have an account?",
                //         style: TextStyle(
                //           fontSize: 11,
                //         ),
                //         textAlign: TextAlign.start,
                //       ),
                //       // Expanded(
                //       //   child: Align(
                //       //     alignment: FractionalOffset.bottomCenter,
                //       //     child: MaterialButton(
                //       //       onPressed: () => {},
                //       //       child: Text('REGISTER'),
                //       //     ),
                //       //   ),
                //       // ),
                //       TextButton(
                //           style: TextButton.styleFrom(
                //             // backgroundColor: MyColors.broun,
                //             fixedSize: Size(double.infinity, double.infinity),
                //             // alignment: Alignment.bottomCenter
                //           ),
                //           onPressed: () {},
                //           child: Text(
                //             "Register Now",
                //             style: TextStyle(fontSize: 11),
                //             // textAlign: TextAlign.start,
                //           ))
                //     ],
                //   ),
                // )
              ],
            ),
          ),
        ),
      );
    });
  }
}
