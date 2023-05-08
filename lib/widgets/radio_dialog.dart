import 'package:flutter/material.dart';

import '../data/my_colors.dart';

class RadioDialog extends StatelessWidget {
  String value;
  String groupValue;
  String colorName;
  Color colorDegree;
  RadioDialog(this.value, this.groupValue, this.colorName, this.colorDegree);

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
    //   child: Row(children: [
    return Expanded(
        child: Row(
      children: [
        Radio(
            focusColor: MyColors.purple,
            value: value,
            groupValue: groupValue,
            onChanged: (v) {}),
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
  }
}
