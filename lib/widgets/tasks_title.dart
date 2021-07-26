import 'package:flutter/material.dart';

class TasksTitle extends StatelessWidget {
  final String title;
  final bool isChecked;
  final Function checkboxCallback;

  TasksTitle(
      {required this.title,
      required this.isChecked,
      required this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: (values) {
            checkboxCallback(values);
          }),
    );
  }
}
