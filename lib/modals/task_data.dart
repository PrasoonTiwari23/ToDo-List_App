import 'package:flutter/material.dart';
import 'package:todoey_flutter/modals/tasks.dart';
import 'dart:collection';
class TaskData extends ChangeNotifier
{
  List<Tasks> _task = [
    Tasks(name: 'buy milk', isDone: false),
    Tasks(name: 'buy burger', isDone: false),
    Tasks(name: 'buy eggs', isDone: false)
  ];
  
  UnmodifiableListView<Tasks>? get task
  {
    return UnmodifiableListView(_task);
  }
  
  int get taskCount
  {
    return _task.length;
  }
  void addTask(String newTaskTitle)
  {
    _task.add(Tasks(name:newTaskTitle));
    notifyListeners();
  }
  void updateTask(Tasks task)
  {
    task.toggleDone();
    notifyListeners();
  }
  void deleteTask(Tasks task)
  {
    _task.remove(task);
    notifyListeners();
  }
}