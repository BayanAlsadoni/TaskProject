import 'package:final_project/data/category.dart';
import 'package:final_project/data/task.dart';
import 'package:final_project/models/db_helper.dart';
import 'package:final_project/views/addTask.dart';
import 'package:final_project/views/app_pages/desplay_category_tasks.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data/user.dart';

class MyProvider extends ChangeNotifier {
  Category? ca;
  MyProvider({ca}) {
    getAllCategories();
    getAllTasks();
    getUsers();
    if (ca != null) {
      getCategoryTasks(ca);
    }
  }

  List<Category> categories = [];
  List<Task> tasks = [];
  List<Task> categoryTasks = [];
  List<User> users = [];
  bool isLoading = false;

  TextEditingController userName = TextEditingController();
  TextEditingController userEmail = TextEditingController();
  TextEditingController userPassword = TextEditingController();

  TextEditingController taskTitleController = TextEditingController();
  TextEditingController taskDescriptionController = TextEditingController();
  // TextEditingController taskNameController = TextEditingController();
  String time = "";
  String date = "";
  int catId = 0;
  int id = 0;

  getUsers() async {
    users = await DBHelper.dbHelper.getAllUsers();
    notifyListeners();
  }

  chechUser() async {
    users = await DBHelper.dbHelper.getAllUsers();
    for (User user in users) {
      if (user.email == userName.text) {}
    }
  }

  insertNewUser() async {
    User user = User(
        name: userName.text,
        email: userEmail.text,
        password: userPassword.text);
    int newId = await DBHelper.dbHelper.insertUse(user);
    // user.id = newId;
    // users.add(user);
    // notifyListeners();
    print("in insert user pr $user");
    getUsers();
  }

  flipIsLoading() {
    isLoading = !isLoading;
    notifyListeners();
  }

  getAllCategories() async {
    // flipIsLoading();
    categories = await DBHelper.dbHelper.getAllCategories();
    // flipIsLoading();
    notifyListeners();
  }

  TextEditingController catNameController = TextEditingController();
  String catColorName = "";
  int categoryId = 0;

  late Task t;

  changeCatColor(String catColor) {
    catColorName = catColor;
    notifyListeners();
  }

  insertNewCategory(BuildContext context) async {
    Category category =
        Category(name: catNameController.text, color: catColorName);
    // int newId =
    await DBHelper.dbHelper.insertCategory(category);
    // category.id = newId;
    // categories.add(category);
    // notifyListeners();
    // Navigator.of(context).pop();
    getAllCategories();
  }

  deleteCategory(int id) async {
    await DBHelper.dbHelper.deleteCategory(id);
    categories.removeWhere((element) => element.id == id);
    deleteCategoryTasks(id);
    notifyListeners();
  }

  deleteCategoryTasks(int cid) async {
    await DBHelper.dbHelper.deleteTaskByCategory(cid);
    categories.removeWhere((element) => element.id == cid);
    tasks.removeWhere((element) => element.catId == cid);
    notifyListeners();
  }

  navigateToCategoryTask(Category cat, BuildContext context) {
    catNameController.text = cat.name ?? '';
    catColorName = cat.color ?? '';
    categoryId = cat.id ?? 0;

    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return DesplayCategoryTasks(cat);
    }));
  }

  getCategoryTasks(Category cat) async {
    // flipIsLoading();
    // for (Task t in tasks) {
    //   if (t.catId == cat.id) {
    //     categoryTasks.add(t);
    //   }
    // }
    categoryTasks = await DBHelper.dbHelper.getTaskByCategoryId(cat.id ?? 0);
    notifyListeners();

    // return categoryTasks;
    // flipIsLoading();
  }

  getAllTasks() async {
    // flipIsLoading();
    tasks = await DBHelper.dbHelper.getAllTasks();
    notifyListeners();
    // flipIsLoading();
  }

  insertNewTask() async {
    Task task = Task(
        title: taskTitleController.text,
        description: taskDescriptionController.text,
        date: date,
        time: time,
        catId: catId);
    // int newId =
    await DBHelper.dbHelper.insertTask(task);
    // task.id = newId;
    // tasks.add(task);
    // notifyListeners();
    getAllTasks();
  }

  deleteTask(int id) async {
    await DBHelper.dbHelper.deleteTask(id);
    tasks.removeWhere((element) => element.id == id);
    notifyListeners();
  }

  navigateToEditTask(Task task, BuildContext context) {
    this.t = task;
    taskTitleController.text = task.title ?? '';
    taskDescriptionController.text = task.description ?? '';
    time = task.time ?? '';
    date = task.date ?? '';
    id = task.id ?? 0;
    catId = task.catId ?? 0;
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return AddTask(
        catId,
        isNewTask: false,
      );
    }));
  }

  updateTask() async {
    print("task id in update ${t.id}");
    Task task = Task(
        id: t.id,
        title: taskTitleController.text,
        description: taskDescriptionController.text,
        time: time,
        date: date,
        catId: catId);
    await DBHelper.dbHelper.updateTask(task);
    getAllTasks();
  }
}
