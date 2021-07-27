import 'package:flutter/foundation.dart';
import 'package:flutter_to_do_list/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: "hung"),
    Task(name: "hung2"),
    Task(name: "hung3"),
    Task(name: "hung4"),
  ];
  int get taskCount {
    return tasks.length;
  }
}
