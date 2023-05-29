import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data/my_colors.dart';
import '../models/provider.dart';

class RadioDialog extends StatelessWidget {
  String value;
  String groupValue;
  String colorName;
  Color colorDegree;
  RadioDialog(
      {required this.value,
      required this.groupValue,
      required this.colorName,
      required this.colorDegree});

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
    //   child: Row(children: [
    return Consumer<MyProvider>(builder: (context, provider, w) {
      return Expanded(
          child: Row(
        children: [
          Radio(
              focusColor: MyColors.purple,
              value: value,
              groupValue: groupValue,
              onChanged: (v) {
                groupValue = v ?? '';
                provider.changeCatColor(groupValue);
                print("$groupValue");
                print("$v");
              }),
          // onChanged: (v) {
          //   groupValue = value;
          // }),
          Container(
            width: 10,
            height: 10,
            margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
            // color: Colors.green,
            color: colorDegree,
          ),
          Text(colorName)
        ],
      ));
      //     Expanded(
      //         child: Row(
      //       children: [
      //         Radio(
      //             focusColor: MyColors.purple,
      //             value: value,
      //             groupValue: groupValue,
      //             onChanged: (v) {}),
      //         Container(
      //           width: 10,
      //           height: 10,
      //           margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
      //           // color: Colors.green,
      //           color: colorDegree,
      //         ),
      //         Text(colorName)
      //       ],
      //     ))
      //   ]),
      // );
    });
  }
}
