import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
          const TextField(
            textAlign: TextAlign.center,
            autofocus: true,
          ),
          const SizedBox(height: 16),
          MaterialButton(
            minWidth: double.infinity,
            color: Theme.of(context).colorScheme.inversePrimary,
            onPressed: () {},
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }
}
