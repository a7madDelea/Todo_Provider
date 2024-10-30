import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/task_data_provider.dart';
import 'task_item.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskDataProvider>(
      builder: (context, value, child) => ListView.builder(
        itemCount: value.count,
        itemBuilder: (context, i) => Dismissible(
          key: ValueKey(value.tasks[i]),
          onDismissed: (direction) {
            value.removeTask(value.tasks[i]);
          },
          child: TaskItem(task: value.tasks[i]),
        ),
      ),
    );
  }
}
