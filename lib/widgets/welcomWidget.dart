import 'package:flutter/material.dart';

import 'button_style.dart';

class WeclcomWidget extends StatelessWidget {
  String title = "";
  String discription = "";
  String image = "";
  WeclcomWidget(this.image, this.title, this.discription);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            image,
            width: double.infinity,
            // height: 200,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            discription,
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
          // SizedBox(
          //   height: 180,
          // ),
          // MyButtonStyle("continue"),
          // TextButton(onPressed: () {}, child: Text("Skip"))
        ],
      ),
    );
  }
}
