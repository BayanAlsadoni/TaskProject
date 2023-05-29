import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

import '../data/category.dart';
import '../data/task.dart';
import '../data/user.dart';

class DBHelper {
  DBHelper._();
  String category = "Category";
  String task = "Task";
  static DBHelper dbHelper = DBHelper._();
  late Database databas;
  initDB() async {
    String dbPath = await getDatabasesPath();
    String path = dbPath + '/TaskDB.db';
    databas = await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        db.execute(
            'CREATE TABLE $category (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, color TEXT)');
        db.execute(
            'CREATE TABLE $task (id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT,description TEXT, time TEXT, date TEXT, catId INTEGER references Category(id) )');

        db.execute(
            'CREATE TABLE Register (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT,email TEXT, password TEXT');
      },
    );
  }

  insertUse(User user) async {
    await databas.insert("Register", user.toMap());
  }

  Future<List<User>> getAllUsers() async {
    List<Map> result = await databas.query("Register");
    return result.map((e) => User.fromMap(e)).toList();
  }

  insertCategory(Category cat) async {
    await databas.insert(category, cat.toMap());
  }

  Future<List<Category>> getAllCategories() async {
    List<Map> result = await databas.query(category);
    return result.map((e) => Category.fromMap(e)).toList();
  }

  deleteCategory(int id) async {
    databas.delete(category, where: "id=$id");
  }

  updateCategory(Category newCategory) async {
    databas.update(category, newCategory.toMap(),
        where: 'id = ${newCategory.id}');
  }

  // static getCategoryById(String id) async {
  //   databas.query(category, where: "id=$id");
  // }

  // insertTask(String title, String description, String time, String date,
  //     int catId) async {
  //   databas.insert(task, {
  //     "title": title,
  //     "description": description,
  //     "time": time,
  //     "date": date,
  //     "catId": catId,
  //   });
  // }

  insertTask(Task t) async {
    databas.insert(task, t.toMap());
  }

  Future<List<Task>> getAllTasks() async {
    List<Map> result = await databas.query(task);
    print("in db task ${result.length}");
    return result.map((e) => Task.fromMap(e)).toList();
  }

  Future<List<Task>> getTaskByCategoryId(int catId) async {
    List<Map> result = await databas.query(task, where: "catId = $catId");
    return result.map((e) => Task.fromMap(e)).toList();
  }

  deleteTask(int id) async {
    databas.delete(task, where: "id = $id");
  }

  updateTask(Task newTask) async {
    databas.update(category, newTask.toMap(), where: 'id = ${newTask.id}');
  }
}
