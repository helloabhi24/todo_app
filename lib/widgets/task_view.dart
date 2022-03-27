import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/taskData.dart';
import 'task_tile.dart';

class TaskView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          //listview Builder that has infinite list
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
                taskTitle: task
                    .name, // this widget is use for providing values form one class to another in the state method.
                isCheck: task.isDone,
                checkBoxCallBack: (bool? checkBoxState) {
                  taskData.updateTask(task);
                });
          },
          itemCount: taskData.itemCount,
        );
      },
    );
  }
}
