import 'package:final_project/data/my_colors.dart';
import 'package:final_project/widgets/radio_dialog.dart';
import 'package:flutter/material.dart';

class CategoryDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0)), //this right here
      // insetPadding: EdgeInsets.fromLTRB(0, 10, 0, 5),
      child: Container(
        height: 350.0,
        width: 300.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
                padding: EdgeInsets.fromLTRB(10, 15, 10, 5),
                height: 60,
                child: TextField(
                  decoration: InputDecoration(
                      label: Text("Category"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                )),
            Text("Choos Color"),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Row(children: [
                    RadioDialog("v", "g", "yellow", Colors.amber),
                    RadioDialog("v", "g", "brown", Colors.brown),
                  ]),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Row(children: [
                    RadioDialog("v", "g", "red", Colors.red),
                    RadioDialog("v", "g", "orange", Colors.orange),
                  ]),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Row(children: [
                    RadioDialog("v", "g", "green", Colors.green),
                    RadioDialog("v", "g", "blue", Colors.blue),
                  ]),
                ),
              ],
            ),
            // Container(padding: EdgeInsets.only(top: 20.0)),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  'Got It!',
                  style: TextStyle(color: MyColors.purple, fontSize: 18.0),
                ))
          ],
        ),
      ),
    );
  }
}




// Container(
//                   margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
//                   child: Row(children: [
//                     Expanded(
//                         child: Row(
//                       children: [
//                         Radio(
//                             focusColor: MyColors.purple,

//                             // contentPadding: EdgeInsets.zero,
//                             // title: Text("Yellow",
//                             //   style: TextStyle(color: Colors.amber),
//                             // ),
//                             value: "value",
//                             groupValue: "groupValue",
//                             onChanged: (v) {}),
//                         Container(
//                           width: 10,
//                           height: 10,
//                           margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
//                           color: Colors.amber,
//                         ),
//                         Text("yellow")
//                       ],
//                     )),
//                     RadioDialog("v", "g", "green", Colors.black),

//                     // Expanded(
//                     //     child: Row(
//                     //   children: [
//                     //     Radio(

//                     //         // contentPadding: EdgeInsets.zero,
//                     //         // title: Text("Yellow",
//                     //         //   style: TextStyle(color: Colors.amber),
//                     //         // ),
//                     //         value: "value",
//                     //         groupValue: "groupValue",
//                     //         onChanged: (v) {}),
//                     //     Container(
//                     //       width: 10,
//                     //       height: 10,
//                     //       margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
//                     //       color: Colors.brown,
//                     //     ),
//                     //     Text("brown")
//                     //   ],
//                     // ))
//                   ]),
//                 ),






//  Container(
//                   margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
//                   child: Row(children: [
//                     Expanded(
//                         child: Row(
//                       children: [
//                         Radio(
//                             focusColor: MyColors.purple,
//                             value: "value",
//                             groupValue: "groupValue",
//                             onChanged: (v) {}),
//                         Container(
//                           width: 10,
//                           height: 10,
//                           margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
//                           color: Colors.orange,
//                         ),
//                         Text("orange")
//                       ],
//                     )),
//                     Expanded(
//                         child: Row(
//                       children: [
//                         Radio(
//                             value: "value",
//                             groupValue: "groupValue",
//                             onChanged: (v) {}),
//                         Container(
//                           width: 10,
//                           height: 10,
//                           margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
//                           color: Colors.grey,
//                         ),
//                         Text("grey")
//                       ],
//                     ))
//                   ]),
//                 ),



                // RadioListTile(
                //     title: Text(
                //       "blue",
                //       style: TextStyle(color: Colors.blue),
                //     ),
                //     value: "value",
                //     groupValue: "groupValue",
                //     onChanged: (v) {}),
                // RadioListTile(
                //     title: Text(
                //       "brown",
                //       style: TextStyle(color: Colors.brown),
                //     ),
                //     value: "value",
                //     groupValue: "groupValue",
                //     onChanged: (v) {}),
                // RadioListTile(
                //     title: Text(
                //       "green",
                //       style: TextStyle(color: Colors.green),
                //     ),
                //     value: "value",
                //     groupValue: "groupValue",
                //     onChanged: (v) {}),
