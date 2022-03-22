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
    return ListView.builder( //listview Builder that has infinite list 
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: tasks[index].name,
          isCheck: tasks[index].isDone,
        );
      },
      itemCount: tasks.length,
    );
  }
}
