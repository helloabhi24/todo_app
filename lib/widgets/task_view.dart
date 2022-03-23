import 'package:flutter/material.dart';
import 'package:todo_app/models/tasks.dart';
import 'task_tile.dart';

class TaskView extends StatefulWidget {
  final List<Tasks> tasks;
  TaskView(this.tasks);

  @override
  State<TaskView> createState() => _TaskViewState();
}

class _TaskViewState extends State<TaskView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      //listview Builder that has infinite list
      itemBuilder: (context, index) {
        return TaskTile(
            taskTitle: widget.tasks[index].name, // this widget is use for providing values form one class to another in the state method.
            isCheck: widget.tasks[index].isDone,
            checkBoxCallBack: (bool? checkBoxState) {
              //nullSafty
              setState(() {
                widget.tasks[index].isDone = checkBoxState!; //nullSafty
              });
            });
      },
      itemCount: widget.tasks.length,
    );
  }
}
