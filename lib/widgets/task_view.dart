import 'package:flutter/material.dart';
import 'package:todo_app/models/tasks.dart';
import 'task_tile.dart';

class TaskView extends StatefulWidget {
  @override
  State<TaskView> createState() => _TaskViewState();
}

class _TaskViewState extends State<TaskView> {
  List<Tasks> tasks = [
    Tasks(name: 'Buy Milk'),
    Tasks(name: 'Buy Mango'),
    Tasks(name: 'Buy Orange')
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(
          taskTitle: tasks[0].name,
          isCheck: tasks[0].isDone,
        ),
        TaskTile(
          taskTitle: tasks[1].name,
          isCheck: tasks[1].isDone,
        ),
        TaskTile(
          taskTitle: tasks[2].name,
          isCheck: tasks[2].isDone,
        )
      ],
    );
  }
}
