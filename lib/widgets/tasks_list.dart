import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/models/task_data.dart';
import 'package:provider/provider.dart';

import 'tasks_title.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return TasksTitle(
            title: taskData.tasks[index].name,
            isChecked: taskData.tasks[index].isDone,
            checkboxCallback: (bool checkBoxState) {
              // setState(() {
              //   Provider.of<TaskData>(context).tasks[index].toggleDone();
              // });
            },
          );
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}
