import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isCheck;
  final String taskTitle;

  TaskTile({required this.isCheck, required this.taskTitle});
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
        onChanged: (){},
      ),
    );
  }
}

// (bool? checkBoxState) {
//           //nullSafty
//           setState(() {
//             isCheck = checkBoxState!; //nullSafty
//           });
//         }

