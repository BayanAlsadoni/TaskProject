import 'package:final_project/data/my_colors.dart';
import 'package:flutter/material.dart';

import '../widgets/button_style.dart';
import '../widgets/text_field_style.dart';

class AddTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Add Task"),
      //   titleTextStyle: TextStyle(color: Colors.black),
      //   centerTitle: true,
      //   backgroundColor: Colors.white,
      // ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(15, 20, 15, 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Text("Title"),
              MyTextFieldStyle(
                  hintText: "Task title",
                  fillColor: Colors.black12 //MyColors.purple4,
                  ),
              Text("Description"),
              MyTextFieldStyle(
                  hintText: "Enter task description",
                  minLines: 5,
                  fillColor: Colors.black12
                  // Colors.blueGrey //Colors.black12 //MyColors.white_gray, //MyColors.purple4,
                  ),
              Row(children: [
                Expanded(
                    child: Text(
                  "Due date",
                )), //textAlign: TextAlign.center
                Expanded(
                  child: Text(
                    "Estimate task",
                  ), //textAlign: TextAlign.center
                )
              ]),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 15, 0),
                    // padding: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                        color: Colors
                            .black12, //MyColors.white_gray, //MyColors.purple4,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: ListTile(
                      minLeadingWidth: 55,
                      style: ListTileStyle.drawer,
                      // contentPadding: EdgeInsets.fromLTRB(5, 0, 5, -1),
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return TimePickerDialog(
                                  initialTime: TimeOfDay(hour: 4, minute: 2));
                            });
                      },
                      title: Text("choos Time",
                          style: TextStyle(color: Colors.black54)),
                      trailing: Icon(Icons.hourglass_bottom),
                      // leading: Icon(Icons.lock_clock),
                    ),
                  )),
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.fromLTRB(15, 10, 5, 0),
                    padding: EdgeInsets.all(0),
                    // height: 40,
                    alignment: Alignment.topCenter,
                    decoration: BoxDecoration(
                        color: Colors.black12, //MyColors.purple4,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: ListTile(
                      style: ListTileStyle.drawer,
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return DateRangePickerDialog(
                                  firstDate: DateTime.now(),
                                  lastDate: DateTime(2100));
                            });
                      },
                      title: Text(
                        "choos Date",
                        style: TextStyle(color: Colors.black54),
                      ),
                      trailing: Icon(Icons.date_range_rounded),
                      // leading: Icon(Icons.lock_clock),
                    ),
                  )), //browse_gallery_outlined   browse_gallery_outlined  lock_clock   hourglass_empty
                ],
              ),

              SizedBox(
                height: 50,
              ),
              // Container(
              //     width: double.infinity,
              //     padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              //     child: MyButtonStyle("Done")),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(MyColors.purple),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Done",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




                  //     Container(
                  //       padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  //       margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  //       color: MyColors.gray,
                  //       child: Text(
                  //         "choosTime",
                  //         style: TextStyle(
                  //           color: MyColors.blue_purple,
                  //           fontSize: 30,
                  //           decoration: TextDecoration.underline,
                  //         ),
                  //       ),
                  //     ),
                  //     IconButton(
                  //         onPressed: () {
                  //           showDialog(
                  //               context: context,
                  //               builder: (context) {
                  //                 return TimePickerDialog(
                  //                     initialTime: TimeOfDay(hour: 4, minute: 2));
                  //               });
                  //         },
                  //         icon: Icon(
                  //           Icons.date_range,
                  //           color: MyColors.purple,
                  //         ))
                  //   ],
                  // ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     Container(
                  //       padding: EdgeInsets.all(7),
                  //       margin: EdgeInsets.all(15),
                  //       color: MyColors.gray,
                  //       child: Text(
                  //         "choos Day",
                  //         style: TextStyle(
                  //           color: MyColors.blue_purple,
                  //           fontSize: 30,
                  //           decoration: TextDecoration.underline,
                  //         ),
                  //       ),
                  //     ),
                  //     IconButton(
                  //         onPressed: () {
                  //           showDialog(
                  //               context: context,
                  //               builder: (context) {
                  //                 return DateRangePickerDialog(
                  //                     firstDate: DateTime.now(),
                  //                     lastDate: DateTime(2100));
                  //               });
                  //         },
                  //         icon: Icon(
                  //           Icons.date_range,
                  //           color: MyColors.purple,
                  //         ))

