import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todo_app/models/tasks.dart';

class TaskData extends ChangeNotifier {
  List<Tasks> tasks = [
    //Move tasks from task_view to tasksScreen to lifting up
    Tasks(name: 'Buy Milk'),
    Tasks(name: 'Buy Mango'),
    Tasks(name: 'Buy Orange'),
    Tasks(name: 'Buy Oranic Food'),
    Tasks(name: "Buy Now")
  ];



  int get itemCount {
    return tasks.length;
  }

  void addTasks(String newTaskTitle) {
    final task = Tasks(name: newTaskTitle);
    tasks.add(task);
    notifyListeners();
  }
}
