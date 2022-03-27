import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/taskData.dart';

class AddTaskScreen extends StatelessWidget {
  // add a callBack Function that give back value to the up level class.
  @override
  Widget build(BuildContext context) {
    late String newText;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(40.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "ADD TASK",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30.0, color: Colors.lightBlueAccent),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (newTextField) {
                  newText = newTextField;
                },
              ),
              SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                child: Text("Add"),
                onPressed: () {
                  Provider.of<TaskData>(context,
                          listen: false) // It is require to add listen false
                      .addTasks(newText);
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
