import 'package:final_project/data/color_name.dart';
import 'package:final_project/data/my_colors.dart';
import 'package:final_project/models/db_helper.dart';
import 'package:final_project/models/provider.dart';
import 'package:final_project/widgets/radio_dialog.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data/category.dart';

class CategoryDialog extends StatefulWidget {
  @override
  State<CategoryDialog> createState() => _CategoryDialogState();
}

class _CategoryDialogState extends State<CategoryDialog> {
  TextEditingController controller = TextEditingController();

  String color = "";

  @override
  Widget build(BuildContext context) {
    return Consumer<MyProvider>(builder: (context, provider, w) {
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
                    controller: provider.catNameController,
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
                    child: Expanded(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Radio(
                                fillColor: MaterialStateColor.resolveWith(
                                    (states) =>
                                        MyColors.convertColor("yellow")),
                                value: "yellow",
                                groupValue: color,
                                onChanged: (v) {
                                  color = v ?? '';
                                  provider.changeCatColor(color);
                                  print("$color");
                                }),

                            SizedBox(width: 50, child: Text('yellow')),
                            Radio(
                                fillColor: MaterialStateColor.resolveWith(
                                    (states) =>
                                        MyColors.convertColor("purple")),
                                value: "purple",
                                groupValue: color,
                                onChanged: (v) {
                                  color = v ?? '';
                                  provider.changeCatColor(color);
                                  print("$color");
                                }),
                            SizedBox(width: 50, child: Text('purple')),

                            // RadioDialog(
                            //     value: "yellow",
                            //     groupValue: color,
                            //     colorName: "yellow",
                            //     colorDegree: Colors.amber),
                            // RadioDialog(
                            //     value: "brown",
                            //     groupValue: color,
                            //     colorName: "brown",
                            //     colorDegree: Colors.brown),
                          ]),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Expanded(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Radio(
                                fillColor: MaterialStateColor.resolveWith(
                                    (states) => MyColors.convertColor("pink")),
                                value: "pink",
                                groupValue: color,
                                onChanged: (v) {
                                  color = v ?? '';
                                  provider.changeCatColor(color);
                                  print("$color");
                                }),
                            SizedBox(
                              width: 50,
                              child: Text(
                                'pink',
                              ),
                            ),
                            Radio(
                                fillColor: MaterialStateColor.resolveWith(
                                    (states) =>
                                        MyColors.convertColor("orange")),
                                value: "orange",
                                groupValue: color,
                                onChanged: (v) {
                                  color = v ?? '';
                                  provider.changeCatColor(color);
                                  print("$color");
                                }),
                            SizedBox(width: 50, child: Text('orange')),

                            // RadioDialog(value: "red", groupValue: color),
                            // // RadioDialog("red", color, "red", Colors.red),
                            // RadioDialog(value: "orange", groupValue: color),
                            // RadioDialog("orange", color, "orange", Colors.orange),
                          ]),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Radio(
                              fillColor: MaterialStateColor.resolveWith(
                                  (states) => MyColors.convertColor("green")),
                              value: "green",
                              groupValue: color,
                              onChanged: (v) {
                                color = v ?? '';
                                provider.changeCatColor(color);
                                print("$color");
                              }),
                          SizedBox(width: 50, child: Text('green')),
                          Radio(
                              fillColor: MaterialStateColor.resolveWith(
                                  (states) => MyColors.convertColor("blue")),
                              value: "blue",
                              groupValue: color,
                              onChanged: (v) {
                                color = v ?? '';
                                provider.changeCatColor(color);
                                print("$color");
                              }),
                          SizedBox(width: 50, child: Text('blue')),

                          // RadioDialog("green", color, "green", Colors.green),
                          // RadioDialog("blue", color, "blue", Colors.blue),
                        ]),
                  ),
                ],
              ),
              // Container(padding: EdgeInsets.only(top: 20.0)),
              TextButton(
                  onPressed: () async {
                    await provider.insertNewCategory(context);
                    // setState(() {});
                    provider.catNameController.clear();

                    // String catName = controller.text;
                    // // ColorName.convertColor(color); // importany
                    // Category c = Category(name: catName, color: color);
                    // DBHelper.dbHelper.insertCategory(c);
                    Navigator.of(context).pop();
                    // setState(() {});
                  },
                  child: Text(
                    'Got It!',
                    style: TextStyle(color: MyColors.purple, fontSize: 18.0),
                  ))
            ],
          ),
        ),
      );
    });
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
