import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/screens/tasksScreen.dart';
import 'package:todo_app/models/taskData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
