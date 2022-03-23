import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function callBackFun; // add a callBack Function that give back value to the up level class.
  AddTaskScreen(this.callBackFun);
  @override
  Widget build(BuildContext context) {
    String newText = "";
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
                onPressed: () {
                  callBackFun(newText);
                },
                child: Text("Add"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
