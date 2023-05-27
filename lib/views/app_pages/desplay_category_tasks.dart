import 'package:final_project/data/task.dart';
import 'package:final_project/views/addTask.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../data/my_colors.dart';
import '../../models/db_helper.dart';

class DesplayCategoryTasks extends StatefulWidget {
  int catId;
  DesplayCategoryTasks(this.catId);

  @override
  State<DesplayCategoryTasks> createState() => _DesplayCategoryTasksState();
}

class _DesplayCategoryTasksState extends State<DesplayCategoryTasks> {
  List<Task>? categoryTasks;
  // Category category;
  getCategoryTasks() async {
    categoryTasks = await DBHelper.dbHelper.getTaskByCategoryId(widget.catId);
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCategoryTasks();
  }

  Task? catTask;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DesplayCategoryTasks")),
      body: categoryTasks == null
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: categoryTasks?.length ?? 0,
              itemBuilder: (context, index) {
                catTask = categoryTasks![index];
                return Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      // color: MyColors.convertColor(catTask.color ?? ""),
                      color: MyColors.purple4,
                      borderRadius: BorderRadius.circular(15)),
                  child: Dismissible(
                    key: ValueKey(catTask),
                    onDismissed: DBHelper.dbHelper.deleteTask(catTask!.id ?? 0),
                    child: ListTile(
                      title: Text(catTask!.title ?? ""),
                      subtitle: Text(catTask!.description ?? ""),
                      // onTap: () {
                      //   Navigator.of(context)
                      //       .push(MaterialPageRoute(builder: (context) {
                      //     return DesplayCategoryTasks(category.id ?? 0);
                      //   }));
                      // },
                    ),
                  ),
                );
              }),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return AddTask(catTask!.catId ?? 0);
            }));
          },
          backgroundColor: MyColors.purple,
          child: Icon(Icons.add)),
    );
  }
}
