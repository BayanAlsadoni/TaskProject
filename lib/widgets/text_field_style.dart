import 'package:flutter/material.dart';

import '../data/my_colors.dart';

class MyTextFieldStyle extends StatelessWidget {
  String? hintText;
  Color? fillColor;
  int? minLines;
  MyTextFieldStyle({this.hintText, this.minLines, this.fillColor});

  //  = fillColor==null?MyColors.white_gray ;fillColor

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
      child: TextField(
        // cursorColor: MyColors.broun,

        // textAlign: ,
        // strutStyle: ,
        // style: TextStyle(backgroundColor: MyColors.broun),
        maxLength: 5,
        // minLines: 1,
        // maxLines: 6,
        keyboardType: TextInputType.multiline,
        maxLines: minLines,

        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.black26),
          contentPadding: EdgeInsets.all(10),
          filled: true,
          fillColor: fillColor ?? MyColors.white_gray,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide
                .none, //if u don't want the border visible but the radius of of border can see it
          ),

          // labelText: "email"
          // hoverColor: MyColors.broun2
        ),
      ),
    );
    // TextFieldStyle();
  }
}


      // decoration: InputDecoration.collapsed(
      //   hintText: "",
      //   // floatingLabelAlignment: FloatingLabelAlignment.start,
      //   enabled: true,
      //   hintStyle: TextStyle(
      //     height: 2,
      //   ),

      //   // hintStyle: ,

      //   filled: true,
      //   border: OutlineInputBorder(
      //       borderRadius: BorderRadius.all(Radius.circular(1)), gapPadding: 10),
      //   // fillColor: MyColors.offWhite
      // ),

      // style: TextStyle(
      // backgroundColor: MyColors.broun,
      //     fontSize: 50,

      //     decorationColor: Color.lerp(
      //         Colors.amber, Colors.amberAccent, BorderSide.strokeAlignCenter)
      // ),
