import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/task_data_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.done_all,
          size: 40,
        ),
        title: Text(
          'ToDo',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontSize: 30,
              ),
        ),
      ),
      body: Consumer<TaskDataProvider>(
        builder: (context, value, child) => Column(
          children: value.tasks.map((e) => Text(e.task)).toList(),
        ),
      ),
    );
  }
}
