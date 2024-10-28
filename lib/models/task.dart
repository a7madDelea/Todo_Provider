import 'package:uuid/uuid.dart';

const Uuid uuid = Uuid();

class Task {
  final String id;
  final String task;
  final bool isDone;

  Task({
    required this.task,
    this.isDone = false,
  }) : id = uuid.v1();
}
