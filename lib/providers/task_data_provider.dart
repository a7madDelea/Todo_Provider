import 'package:flutter/material.dart';

import '../models/task.dart';

class TaskDataProvider extends ChangeNotifier {
  List<Task> tasks = [
    Task(task: 'task1'),
    Task(task: 'task2'),
    Task(task: 'task3'),
    Task(task: 'task4'),
    Task(task: 'task5'),
  ];

  int get count => tasks.length;
}
