import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isCheck = true;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "dfh",
        style:
            TextStyle(decoration: isCheck ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckBox(isCheck),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkBoxState;
  TaskCheckBox(this.checkBoxState);
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkBoxState,
      activeColor: Colors.lightBlueAccent,
      onChanged: (newvalue) {
        // setState(() {
        //   isCheck = newvalue!;
        // });
      },
    );
  }
}
