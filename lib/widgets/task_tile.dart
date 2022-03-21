import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text("1"),
      title: Text("dfh"),
      trailing: TaskCheckBox(),
    );
  }
}

class TaskCheckBox extends StatefulWidget {
  @override
  State<TaskCheckBox> createState() => _TaskCheckBoxState();
}

class _TaskCheckBoxState extends State<TaskCheckBox> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isCheck,
      activeColor: Colors.lightBlueAccent,
      onChanged: (newvalue) {
        setState(() {
          isCheck = newvalue!;
        });
      },
    );
  }
}
