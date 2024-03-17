import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {

  List<Task> tasks = [
    Task('Buy milk'),
    Task('Buy eggs3'),
    Task('Buy bread'),
  ];

  int get taskCount {
    return tasks.length;
  }

}