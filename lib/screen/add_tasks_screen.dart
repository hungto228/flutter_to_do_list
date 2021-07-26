import 'package:flutter/material.dart';

class AddTasksScreen extends StatelessWidget {
  final Function addTaskCallBack;

  AddTasksScreen(this.addTaskCallBack);

  @override
  Widget build(BuildContext context) {
    late String newtaskTitle;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                "Add Tasks",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.lightBlueAccent,
                ),
              ),
            ),
            TextField(
              autofocus: true,
              maxLines: null,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: "Enter add task",
                hintStyle:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.w900),
                prefix: Icon(Icons.add_shopping_cart),
              ),
              onChanged: (newText) {
                newtaskTitle = newText;
              },
            ),
            FlatButton(
              onPressed: () {
                addTaskCallBack(newtaskTitle);
              },
              child: Icon(Icons.add),
              color: Colors.lightBlueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
