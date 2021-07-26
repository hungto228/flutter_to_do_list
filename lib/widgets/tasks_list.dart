import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/models/task.dart';

import 'tasks_title.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: "hung"),
    Task(name: "hung2"),
    Task(name: "hung3"),
    Task(name: "hung4"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TasksTitle(
          title: tasks[index].name,
          isChecked: tasks[index].isDone,
          checkboxCallback: (bool checkBoxState) {
            setState(() {
              tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
