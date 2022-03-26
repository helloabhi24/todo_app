import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/taskData.dart';
import 'task_tile.dart';

class TaskView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      //listview Builder that has infinite list
      itemBuilder: (context, index) {
        return TaskTile(
            taskTitle: Provider.of<TaskData>(context)
                .tasks[index]
                .name, // this widget is use for providing values form one class to another in the state method.
            isCheck: Provider.of<TaskData>(context).tasks[index].isDone,
            checkBoxCallBack: (bool? checkBoxState) {
              //nullSafty
              // setState(() {
              //   widget.tasks[index].isDone = checkBoxState!; //nullSafty
              // });
            });
      },
      itemCount: Provider.of<TaskData>(context).tasks.length,
    );
  }
}
