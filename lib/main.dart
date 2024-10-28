import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/task_data_provider.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider<TaskDataProvider>(
      create: (context) => TaskDataProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ToDo Provider',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          )
        )
      ),
      home: const HomeScreen(),
    );
  }
}
