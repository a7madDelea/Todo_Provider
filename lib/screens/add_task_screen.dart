import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/task.dart';
import '../providers/task_data_provider.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    String text = '';
    return Container(
      padding: const EdgeInsets.all(16),
      margin: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Add Task',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          TextField(
            textAlign: TextAlign.center,
            autofocus: true,
            onChanged: (value) {
              text = value;
            },
          ),
          const SizedBox(height: 16),
          MaterialButton(
            minWidth: double.infinity,
            color: Theme.of(context).colorScheme.inversePrimary,
            onPressed: () {
              Provider.of<TaskDataProvider>(context, listen: false).addTask(
                Task(task: text),
              );
              Navigator.pop(context);
            },
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }
}
