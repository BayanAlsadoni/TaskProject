import 'package:final_project/data/my_colors.dart';
import 'package:flutter/material.dart';

class DrawerHome extends StatefulWidget {
  @override
  State<DrawerHome> createState() => _DrawerHomeState();
}

class _DrawerHomeState extends State<DrawerHome> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: isDark ? ThemeData.dark() : ThemeData.light(),
      child: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("user name"),
              accountEmail: Text("email@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(""),
                backgroundColor: MyColors.purple,
              ),
            ),
            Switch(
                value: isDark,
                onChanged: (value) {
                  isDark = value;
                  setState(() {});
                }),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Setting"),
            )
          ],
        ),
      ),
    );
  }
}
