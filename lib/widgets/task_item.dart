import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/providers/task_data_provider.dart';

import '../models/task.dart';

class TaskItem extends StatelessWidget {
  final Task task;
  const TaskItem({
    super.key,
    required this.task,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          task.task,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                decoration: task.isDone
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
                    decorationColor: Colors.black,
                    decorationThickness: 2,
                color: task.isDone ? Colors.grey : Colors.black,
              ),
        ),
        leading: Checkbox(
          value: task.isDone,
          onChanged: (onChanged) =>
              Provider.of<TaskDataProvider>(context, listen: false)
                  .changeStateOfTask(task),
        ),
      ),
    );
  }
}
