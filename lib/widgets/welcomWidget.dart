import 'package:final_project/data/my_colors.dart';
import 'package:flutter/material.dart';

import 'button_style.dart';

class WeclcomWidget extends StatefulWidget {
  String title = "";
  String discription = "";
  String image = "";
  Widget a;

  WeclcomWidget(this.image, this.title, this.discription, this.a);

  @override
  State<WeclcomWidget> createState() => _WeclcomWidgetState();
}

class _WeclcomWidgetState extends State<WeclcomWidget> {
  @override
  Widget build(BuildContext context) {
    // dynamic fun;
    // var fun;
    var fun;
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            widget.image,
            width: double.infinity,
            // height: 200,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            widget.title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            widget.discription,
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
          // FloatingActionButton(
          //   onPressed: () {
          //     Navigator.of(context)
          //         .pushReplacement(MaterialPageRoute(builder: (context) {
          //       return widget.a;
          //     }));
          //     setState(() {});
          //     print("go btn");
          //   },
          //   child: Icon(Icons.navigate_next),
          //   backgroundColor: MyColors.purple,
          // )
        ],
      ),
    );
  }
}
