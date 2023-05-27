import 'package:final_project/views/app_pages/desplay_tasks.dart';
import 'package:final_project/views/app_pages/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../data/my_colors.dart';
import '../widgets/category_dialog.dart';
import '../widgets/drawer_home.dart';
import '../widgets/itemes_widget.dart';
import 'app_pages/categoryPage.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController = PageController();
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerHome(),
      appBar: AppBar(
        title: Text("home"),
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: (value) {
          index = value;
          setState(() {});
        },
        children: [
          CategoryPage(),
          DesplayTasks(),
          Profile(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (value) {
            index = value;
            pageController.jumpToPage(index);
            setState(() {});
          },
          items: [
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