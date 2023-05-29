import 'package:final_project/data/my_colors.dart';
import 'package:final_project/models/db_helper.dart';
import 'package:final_project/models/provider.dart';
import 'package:final_project/views/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/button_style.dart';
import '../widgets/text_field_style.dart';

class AddTask extends StatefulWidget {
  int catId;
  bool isNewTask;
  AddTask(this.catId, {this.isNewTask = true});
  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  TextEditingController titleEditingController = TextEditingController();
  TextEditingController descriptionEditingController = TextEditingController();

  TimeOfDay selectedTime = TimeOfDay.now();
  String time = "Choos time";

  @override
  Widget build(BuildContext context) {
    return Consumer<MyProvider>(builder: (context, provider, x) {
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
                    textEditingController: provider.taskTitleController,
                    hintText: "Task title",
                    fillColor: Colors.black12 //MyColors.purple4,
                    ),
                Text("Description"),
                MyTextFieldStyle(
                    textEditingController: provider.taskDescriptionController,
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
                        onTap: () async {
                          TimeOfDay? timeOfDay = await showTimePicker(
                              context: context, initialTime: TimeOfDay.now());

                          time = timeOfDay == null
                              ? time
                              : "${timeOfDay.hour}:${timeOfDay.minute}";
                          provider.time = timeOfDay == null
                              ? ""
                              : "${timeOfDay.hour}:${timeOfDay.minute}";
                          print("time $timeOfDay");
                          setState(() {});

                          // TimeOfDay pickedTime =  await showTimePicker(
                          //     initialTime: TimeOfDay.now(),
                          //     context: context,
                          // );

                          // showDialog(
                          //     context: context,
                          //     builder: (context) {
                          //       return TimePickerDialog(
                          //           initialTime: TimeOfDay(hour: 4, minute: 2));
                          //       // initialTime: selectedTime);
                          //     });
                        },
                        // title: Text("choos Time",
                        title: Text(provider.time,
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
                        onTap: () async {
                          DateTime selectedDate = DateTime.now();

                          final DateTime? picked = await showDatePicker(
                              context: context,
                              initialDate: selectedDate,
                              firstDate: DateTime(2015, 8),
                              lastDate: DateTime(2101));
                          print("date $picked");
                          selectedDate = picked ?? selectedDate;
                          provider.date = picked == null
                              ? ''
                              : "${picked.year}-${picked.month}-${picked.day}";

                          // Future<DateTime?> date = showDatePicker(
                          //     context: context,
                          //     initialDate: DateTime.now(),
                          //     firstDate: DateTime(2010),
                          //     lastDate: DateTime(2100));
                          // provider.date = date == null ? "" : '${date}';
                          // print("date $date");
                          setState(() {});

                          // showDialog(
                          //     context: context,
                          //     builder: (context) {
                          //       return DateRangePickerDialog(
                          //           firstDate: DateTime.now(),
                          //           lastDate: DateTime(2100));
                          //     });
                        },
                        title: Text(
                          provider.date,
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
                  child:
                      //  MyButtonStyle("Done", HomePage())
                      ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(MyColors.purple),
                    ),
                    onPressed: () async {
                      // String title = titleEditingController.text;
                      // String description = descriptionEditingController.text;
                      String title = provider.taskTitleController.text;
                      String description =
                          provider.taskDescriptionController.text;
                      // String t = provider.time;
                      // String d = provider.date;
                      provider.catId = widget.catId;
                      await provider.insertNewTask();
                      // DBHelper.dbHelper.insertTask();
                      print(
                          "all tasks ${provider.getAllTasks()} ${widget.catId}");
                      print("all tasks");
                      setState(() {});
                    },
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
    });
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

