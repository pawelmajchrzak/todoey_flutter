import 'package:flutter/material.dart';
import 'task_tile.dart';
import '../models/task.dart';



class TasksList extends StatefulWidget {

  final List<Task> tasks;

  TasksList(this.tasks);

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  // List<Task> tasks;
  //
  //
  // _TasksListState(this.tasks);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            widget.tasks[index].name,
            widget.tasks[index].isDone,
            (checkboxState) {
              setState(() {
                widget.tasks[index].toggleDone();
              });
            }
        );
      }, itemCount: widget.tasks.length,
    );
  }
}
