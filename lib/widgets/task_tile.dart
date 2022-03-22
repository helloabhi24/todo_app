import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isCheck = true;
  void checkBoxCallBack(bool? checkBoxState) { //nullSafty
    setState(() {
      isCheck = checkBoxState!;  //nullSafty
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "dfh",
        style:
            TextStyle(decoration: isCheck ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckBox(
        checkBoxState: isCheck,
        toggleCheckBoxState: checkBoxCallBack,
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkBoxState;
  final void Function(bool?) toggleCheckBoxState; //nullSafty
  TaskCheckBox(
      {required this.checkBoxState, required this.toggleCheckBoxState});
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkBoxState,
      activeColor: Colors.lightBlueAccent,
      onChanged: toggleCheckBoxState,
    );
  }
}
