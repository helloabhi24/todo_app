import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isCheck;
  final String taskTitle;
  final void Function(bool?) checkBoxCallBack;
  final Function() longPressCallback;

  TaskTile(
      {required this.isCheck,
      required this.taskTitle,
      required this.checkBoxCallBack,
      required this.longPressCallback});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
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
