// import 'dart:js';

import 'package:final_project/models/provider.dart';
import 'package:final_project/splash.dart';
import 'package:final_project/views/addTask.dart';

import 'package:final_project/views/home.dart';
import 'package:final_project/views/notFoundPage.dart';
import 'package:final_project/views/registration/signin.dart';
import 'package:final_project/views/registration/signup.dart';
import 'package:final_project/views/welcom_pages/welcomePage.dart';
import 'package:final_project/views/welcom_pages/welcomePage4.dart';
import 'package:final_project/widgets/date_dialog.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/db_helper.dart';
import 'models/sp_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SpHelper.initSp();
  await DBHelper.dbHelper.initDB();
  // runApp(const MainApp());
  runApp(ChangeNotifierProvider<MyProvider>(
    create: (context) => MyProvider(),
    child: MaterialApp(home: HomePage()),

    // Scaffold(
    //   body: Splash(),
    //   backgroundColor: Colors.white,
    // ),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
