import 'package:final_project/views/addTask.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../data/my_colors.dart';
import '../../data/task.dart';
import '../../models/db_helper.dart';
import '../../models/provider.dart';

class DesplayTasks extends StatefulWidget {
  @override
  State<DesplayTasks> createState() => _DesplayTasksState();
}

class _DesplayTasksState extends State<DesplayTasks> {
  List<Task>? allTasks;
  // Category category;
  // getCategoryTasks() async {
  //   allTasks = await DBHelper.dbHelper.getAllTasks();
  //   setState(() {});
  // }

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   getCategoryTasks();
  // }

  Task? task;

  @override
  Widget build(BuildContext context) {
    return
        //  allTasks == null
        //     ? const Center(child: CircularProgressIndicator())
        //     :
        Consumer<MyProvider>(builder: (context, controller, w) {
      // controller.getAllTasks();
      print(" tasks lingthe${controller.tasks.length}");
      // print("in tasks${controller.tasks[4]}");
      // setState(() {});
      return controller.tasks == null
          ? const Center(child: CircularProgressIndicator())
          : controller.categories.isEmpty
              ? Container(
                  // color: Colors.black26,
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.white,
                          child: Image.asset(
                            "assets/images/task.png",
                            // child: Image.asset("assets/images/books_cat.png",
                            alignment: Alignment.centerRight, height: 200,
                          ),
                        ),
                      ),
                      Text("There is no tasks yet🥀"),
                    ],
                  ),
                )
              : ListView.builder(
                  itemCount: controller.tasks.length,
                  // itemCount: allTasks?.length ?? 0,
                  itemBuilder: (context, index) {
                    // Task task = allTasks![index];
                    Task task = controller.tasks[index];

                    return Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          // color: MyColors.convertColor(catTask.color ?? ""),
                          color: Colors.black12,
                          // color: MyColors.purple4,
                          borderRadius: BorderRadius.circular(15)),
                      child: Dismissible(
                        // key: ValueKey(controller.tasks[index]),
                        key: ValueKey(task),
                        // key: ValueKey(task),
                        onDismissed: (direction) {
                          // DBHelper.dbHelper.deleteTask(task.id ?? 0);
                          controller
                              .deleteTask(controller.tasks[index].id ?? 0);
                          // setState(() {});
                        },
                        child: ListTile(
                          title: Text(controller.tasks[index].title ?? ""),
                          // title: Text(task.title ?? ""),
                          // subtitle: Text(task.description ?? ""),
                          subtitle:
                              Text(controller.tasks[index].description ?? ''),
                          trailing: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  controller.tasks[index]!.time ?? "",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black45),
                                ),
                                Text(controller.tasks[index].date ?? "",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.black45))
                              ]),

                          onTap: () {
                            controller.navigateToEditTask(
                                controller.tasks[index], context);
                            // Navigator.of(context)
                            //     .push(MaterialPageRoute(builder: (context) {
                            //   return AddTask(
                            //     controller.tasks[index].catId ?? 0,
                            //     isNewTask: false,
                            //   );
                            // }));
                          },
                        ),
                      ),
                    );
                  });
    });
  }
}



        // appBar: AppBar(
        //   title: Text("Add Task"),
        //   titleTextStyle: TextStyle(color: Colors.black),
        //   centerTitle: true,
        //   backgroundColor: Colors.white,
        // ),
//         SingleChildScrollView(
//             padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
//             child: Container(
//               width: double.infinity,
//               margin: EdgeInsets.fromLTRB(15, 20, 15, 10),
//               child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     SizedBox(
//                       height: 50,
//                     ),
//                     Text("Title"),
//                   ]),
//             ));
//   }
// }




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

