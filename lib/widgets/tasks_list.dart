import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
                taskData.tasks[index].name,
                taskData.tasks[index].isDone,
                    (checkboxState) {
                  // setState(() {
                  //   taskData.tasks[index].toggleDone();
                  // });
                }
            );
          }, itemCount: taskData.taskCount,
        );
      },
    );
  }
}
