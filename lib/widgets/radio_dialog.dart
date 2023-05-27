import 'package:flutter/material.dart';

import '../data/my_colors.dart';

class RadioDialog extends StatefulWidget {
  String value;
  String groupValue;
  String colorName;
  Color colorDegree;
  RadioDialog(this.value, this.groupValue, this.colorName, this.colorDegree);

  @override
  State<RadioDialog> createState() => _RadioDialogState();
}

class _RadioDialogState extends State<RadioDialog> {
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
            value: widget.value,
            groupValue: widget.groupValue,
            onChanged: (v) {
              widget.groupValue = widget.value;
              setState(() {});
            }),
        Container(
          width: 10,
          height: 10,
          margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
          // color: Colors.green,
          color: widget.colorDegree,
        ),
        Text(widget.colorName)
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
