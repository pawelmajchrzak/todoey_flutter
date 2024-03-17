import 'package:flutter/material.dart';
import 'task_tile.dart';
import '../models/task.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task('Buy milk'),
    Task('Buy eggs'),
    Task('Buy bread'),
  ];



  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            tasks[index].name,
            tasks[index].isDone,
            (checkboxState) {
              setState(() {
                tasks[index].toggleDone();
              });
            }
        );
      }, itemCount: tasks.length,
    );
  }
}
