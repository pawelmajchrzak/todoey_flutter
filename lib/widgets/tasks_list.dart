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
            final task = taskData.tasks[index];
            return TaskTile(
                task.name,
                task.isDone,
                    (checkboxState) {
                  taskData.updateTask(task);
                },
                () {
                  taskData.removeTask(task);
                },
            );
          }, itemCount: taskData.taskCount,
        );
      },
    );
  }
}
