import 'package:flutter/material.dart';

import '../models/task.dart';

class TaskDataProvider extends ChangeNotifier {
  List<Task> tasks = [];

  int get count => tasks.length;

  void addTask(Task task) {
    tasks.add(task);
    notifyListeners();
  }

  void removeTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }

  void changeStateOfTask(Task task) {
    task.isDone = !task.isDone;
    notifyListeners();
  }
}
