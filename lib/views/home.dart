import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../data/my_colors.dart';
import '../widgets/category_dialog.dart';
import '../widgets/drawer_home.dart';
import '../widgets/itemes_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerHome(),
      appBar: AppBar(
        title: Text("home"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Expanded(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // Expanded(
                //     child:
                ItemesWidget(
                    "assets/images/image_welcome_3.png", "t", "d"), //),

                SizedBox(
                  height: 50,
                ),
                FloatingActionButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) => CategoryDialog());
                    },
                    backgroundColor: MyColors.purple,
                    child: Icon(Icons.add)),
                // Text("data"),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
        BottomNavigationBarItem(
            // icon: Icon(Icons.assessment_outlined), label: "task"),
            icon: Icon(Icons.ballot_outlined),
            // icon: Icon(Icons.auto_stories_outlined),
            label: "task"),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle), label: "profile"),
        // BottomNavigationBarItem(icon: Icon(Icons.home)),
      ]),
    );
  }
}
//add_card  add_chart_sharp  add_circle  add_circle_outline  add_task_rounded  align_vertical_bottom     align_vertical_bottom   all_inbox_rounded  apps   art_track    art_track    article_outlined 
//auto_awesome_mosaic_outlined   auto_awesome_mosaic_outlined 