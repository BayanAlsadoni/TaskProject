import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data/my_colors.dart';

class NotFoundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.purple,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/notfound.png",
            width: 280,
            height: 280,
          ),
          SizedBox(
            width: double.infinity,
          ),
          Text(
            "Not Found",
            style: TextStyle(color: MyColors.white),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "We're sorry, this page is not found! \nplease look for new page",
            style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.normal,
                color: MyColors.white),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
