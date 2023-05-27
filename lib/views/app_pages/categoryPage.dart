import 'dart:math';

import 'package:final_project/data/category.dart';
import 'package:final_project/models/db_helper.dart';
import 'package:final_project/views/app_pages/desplay_category_tasks.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../data/my_colors.dart';
import '../../widgets/category_dialog.dart';
import '../../widgets/drawer_home.dart';
import '../../widgets/itemes_widget.dart';

class CategoryPage extends StatefulWidget {
  @override
  State<CategoryPage> createState() => _CategoryState();
}

class _CategoryState extends State<CategoryPage> {
  //  DBHelper.dbHelper.insertCategory(catName, color);
  // DBHelper.dbHelper.getCategory();

  List<Category>? allCategories;
  // Category category;
  getALLCategories() async {
    allCategories = await DBHelper.dbHelper.getAllCategories();
    print(allCategories.toString());
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getALLCategories();
  }

  @override
  Widget build(BuildContext context) {
    return allCategories == null
        ? const Center(child: CircularProgressIndicator())
        : SingleChildScrollView(
            child: Column(
              children: [
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    // itemCount: 10,
                    itemCount: allCategories?.length ?? 0,
                    itemBuilder: (context, index) {
                      Category category = allCategories![index];
                      print("$index category.toString()");
                      print("$index ${category.color}");
                      return Container(
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: MyColors.convertColor(category.color ?? ""),
                            borderRadius: BorderRadius.circular(15)),
                        // child: Dismissible(
                        //   key: ValueKey(category),
                        //   onDismissed: DBHelper.dbHelper
                        //       .deleteCategory(category.id ?? 0),
                        child: Dismissible(
                          key: ValueKey(category),
                          onDismissed: (direction) {
                            DBHelper.dbHelper.deleteCategory(category.id ?? 0);
                            allCategories!.removeWhere(
                                (element) => element.id == category.id);
                          },
                          child: ListTile(
                            title: Text(category.name ?? ""),
                            // title: Text(category.name ?? ""),
                            onTap: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return DesplayCategoryTasks(category.id ?? 0);
                              }));
                            },
                          ),
                        ),
                        // ),
                      );
                    }),
                Container(
                  margin: EdgeInsets.all(20),
                  alignment: Alignment.bottomRight,
                  child: FloatingActionButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) =>
                                CategoryDialog());
                      },
                      backgroundColor: MyColors.purple,
                      child: Icon(Icons.add)),
                ),
              ],
            ),
          );

// FloatingActionButton(
//                       onPressed: () {
//                         showDialog(
//                             context: context,
//                             builder: (BuildContext context) =>
//                                 CategoryDialog());
//                       },
//                       backgroundColor: MyColors.purple,
//                       child: Icon(Icons.add)),

    // Column(
    //   children: [
    //     Row(
    //       children: [
    //         Expanded(
    //           child: Container(
    //             height: 100,
    //             alignment: Alignment.center,
    //             margin: EdgeInsets.all(10),
    //             decoration: BoxDecoration(
    //               color: Colors.blueGrey,
    //               borderRadius: BorderRadius.circular(15),
    //             ),
    //             child: ListTile(title: Text("hi")),
    //           ),
    //         ),
    //         Expanded(
    //           child: Container(
    //             alignment: Alignment.center,
    //             height: 100,
    //             margin: EdgeInsets.all(10),
    //             decoration: BoxDecoration(
    //                 color: Colors.blueGrey,
    //                 borderRadius: BorderRadius.circular(15)),
    //             child: ListTile(title: Text("hi")),
    //           ),
    //         )
    //       ],
    //     ),
    //     SizedBox(
    //       height: 300,
    //     ),
    //     FloatingActionButton(
    //         onPressed: () {
    //           showDialog(
    //               context: context,
    //               builder: (BuildContext context) => CategoryDialog());
    //         },
    //         backgroundColor: MyColors.purple,
    //         child: Icon(Icons.add)),
    //   ],
    // );

// and this is true but have some of change
    // Column(
    //   children: [
    //     Expanded(
    //       child: ListView.builder(
    //         itemCount: 3,
    //         itemBuilder: (context, index) {
    //           return Row(
    //             children: [
    //               Expanded(child: ListTile(title: Text("hi"))),
    //               // Expanded(child: ListTile(title: Text("hi"))),
    //             ],
    //           );
    //         },
    //       ),
    //     ),
    //     FloatingActionButton(
    //         onPressed: () {
    //           showDialog(
    //               context: context,
    //               builder: (BuildContext context) => CategoryDialog());
    //         },
    //         backgroundColor: MyColors.purple,
    //         child: Icon(Icons.add)),
    //   ],
    // );
    // itemCount: 3,
    // itemBuilder: (context, index) {
    //   return Container(
    //       color: Colors.blueGrey,
    //       width: double.infinity,
    //       height: double.infinity,
    //       // child: Row(
    //       //   children: [
    //       //     Expanded(
    //       child: ListTile(
    //         title: Text("hi"),
    // ));
    // Expanded(child: ListTile(title: Text("hi"))),
    // ],
    // ),
    // );
    // },
    // );

    // SingleChildScrollView(
    //   child: Container(
    //     padding: EdgeInsets.all(10),
    //     child: Expanded(
    //       child: Column(
    //         // mainAxisAlignment: MainAxisAlignment.end,
    //         crossAxisAlignment: CrossAxisAlignment.end,
    //         children: [
    //           // Expanded(
    //           //     child:
    //           ItemesWidget("assets/images/image_welcome_3.png", "t", "d"), //),

    //           SizedBox(
    //             height: 50,
    //           ),
    //           FloatingActionButton(
    //               onPressed: () {
    //                 showDialog(
    //                     context: context,
    //                     builder: (BuildContext context) => CategoryDialog());
    //               },
    //               backgroundColor: MyColors.purple,
    //               child: Icon(Icons.add)),
    //           // Text("data"),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
//add_card  add_chart_sharp  add_circle  add_circle_outline  add_task_rounded  align_vertical_bottom     align_vertical_bottom   all_inbox_rounded  apps   art_track    art_track    article_outlined
//auto_awesome_mosaic_outlined   auto_awesome_mosaic_outlined
