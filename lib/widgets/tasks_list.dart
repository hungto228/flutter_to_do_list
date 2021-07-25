import 'package:flutter/material.dart';

import 'tasks_title.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TasksTitle(
          title: "this is check 1",
        ),
        TasksTitle(
          title: "this is check 1",
        ),
        TasksTitle(
          title: "this is check 1",
        ),
        ListTile(
          title: Text("this is check 2"),
          trailing: Checkbox(
            value: true,
            onChanged: (bool? value) {},
          ),
        ),
      ],
    );
  }
}
