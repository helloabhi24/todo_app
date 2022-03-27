import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todo_app/models/tasks.dart';

class TaskData extends ChangeNotifier {
  List<Tasks> _tasks = [
    //Move tasks from task_view to tasksScreen to lifting up
    Tasks(name: 'Buy Milk'),
    Tasks(name: 'Buy Mango'),
    Tasks(name: 'Buy Orange'),
    Tasks(name: 'Buy Oranic Food'),
    Tasks(name: "Buy Now")
  ];

  UnmodifiableListView<Tasks> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get itemCount {
    return _tasks.length;
  }

  void addTasks(String newTaskTitle) {
    final task = Tasks(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Tasks task) {
    task.toggleDone();
    notifyListeners();
  }
}
