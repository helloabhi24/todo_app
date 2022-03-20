import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text("1"),
      title: Text("dfh"),
      trailing: Checkbox(
        value: true,
        onChanged: (value) {},
      ),
    );
  }
}