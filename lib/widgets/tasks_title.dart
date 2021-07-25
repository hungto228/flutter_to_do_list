import 'package:flutter/material.dart';

class TasksTitle extends StatelessWidget {
  final String title;

  const TasksTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: Checkbox(
        value: false,
        onChanged: (bool? value) {},
      ),
    );
  }
}
