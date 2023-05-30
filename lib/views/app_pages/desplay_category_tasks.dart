import 'package:final_project/data/task.dart';
import 'package:final_project/models/provider.dart';
import 'package:final_project/views/addTask.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../data/category.dart';
import '../../data/my_colors.dart';
import '../../models/db_helper.dart';

class DesplayCategoryTasks extends StatefulWidget {
  // int catId;
  Category cat;
  DesplayCategoryTasks(this.cat);

  @override
  State<DesplayCategoryTasks> createState() => _DesplayCategoryTasksState();
}

class _DesplayCategoryTasksState extends State<DesplayCategoryTasks> {
  // List<Task>? categoryTasks;
  // Task? catTask;

  List<Task>? categoryTasks;
  // Category category;
  getCategoryTasks() async {
    categoryTasks =
        await DBHelper.dbHelper.getTaskByCategoryId(widget.cat.id ?? 0);
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCategoryTasks();
  }

  @override
  Widget build(BuildContext context) {
    // print("in cattask id ${widget.cat.id}");
    // return Consumer<MyProvider>(
    //   builder: (context, provider, child) {
    // provider(cat:widget.cat);
    // provider.ca = widget.cat;
    // provider.getCategoryTasks(widget.cat);
    // print("category  ${provider.ca?.name}");
    // print("category tasks ${provider.categoryTasks.length}");
    // print("category tasks ${provider.getCategoryTasks(provider.ca!)}");
    // catTask = provider.categoryTasks
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.cat.name ?? ""),
        backgroundColor: MyColors.purple,
      ),
      body:
          // provider.categoryTasks == null
          //     ? const Center(child: CircularProgressIndicator())
          //     :
          ListView.builder(
              // itemCount: provider.categoryTasks.length,
              // itemCount: provider.getCategoryTasks(cat),
              itemCount: categoryTasks?.length ?? 0,
              itemBuilder: (context, index) {
                // setState(() {});
                Task catTask = categoryTasks![index];
                // provider.getCategoryTasks(widget.cat);
                // catTask = provider.categoryTasks![index];
                return Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      // color: MyColors.convertColor(catTask.color ?? ""),
                      color: Colors.black12,
                      // color: Colors.grey,
                      borderRadius: BorderRadius.circular(15)),
                  child: Dismissible(
                    key: ValueKey(catTask),
                    // key: ValueKey(catTask),
                    onDismissed: (direction) async {
                      // provider.deleteTask(
                      //     provider.categoryTasks[index].id ?? 0);
                      await DBHelper.dbHelper.deleteTask(catTask.id ?? 0);
                      getCategoryTasks();

                      // setState(() {});
                    },
                    // DBHelper.dbHelper.deleteTask(catTask!.id ?? 0),
                    child: ListTile(
                      // title:
                      // Text(provider.categoryTasks[index].title ?? ""),
                      title: Text(
                        catTask!.title ?? "",
                        // style: TextStyle(color: MyColors.blue_purple),
                      ),
                      // subtitle: Text(
                      //     provider.categoryTasks[index].description ?? ""),
                      subtitle: Text(
                        catTask!.description ?? "",
                        // style: TextStyle(color: MyColors.blue_purple),
                      ),
                      trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              catTask!.time ?? "",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.black45),
                            ),
                            Text(catTask.date ?? "",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black45))
                          ]),
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
              // return AddTask(provider.categoryTasks[index] ?? 0);
              return AddTask(widget.cat.id ?? 0, fun: getCategoryTasks);
            }));
          },
          backgroundColor: MyColors.purple,
          child: Icon(Icons.add)),
    );
    // }
    // );
  }
}
