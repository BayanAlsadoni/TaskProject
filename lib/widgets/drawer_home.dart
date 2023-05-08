import 'package:final_project/data/my_colors.dart';
import 'package:flutter/material.dart';

class DrawerHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Setting"),
          )
        ],
      ),
    );
  }
}
