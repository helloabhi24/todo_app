import 'package:flutter/material.dart';
import 'task_tile.dart';

class TaskView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [TaskTile(), TaskTile(), TaskTile()],
    );
  }
}