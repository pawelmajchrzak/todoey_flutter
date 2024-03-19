import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    late String newTaskName;

    return Container(
      height: 550,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 30,
            ),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (value) {
              newTaskName = value;
            },
          ),
          TextButton(
            onPressed: () {
              Provider.of<TaskData>(context, listen: false).addTask(newTaskName);
              Navigator.pop(context);
            },
            child: Text(
              'Add',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.lightBlueAccent),
            ),
          ),
          SizedBox(
            height: 300,
          )
        ],
      ),
    );
  }
}
