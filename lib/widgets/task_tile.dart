import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isCheck;
  final String taskTitle;
  final void Function(bool?) checkBoxCallBack;

  TaskTile(
      {required this.isCheck,
      required this.taskTitle,
      required this.checkBoxCallBack});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style:
            TextStyle(decoration: isCheck ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isCheck,
        activeColor: Colors.lightBlueAccent,
        onChanged: checkBoxCallBack,
      ),
    );
  }
}
