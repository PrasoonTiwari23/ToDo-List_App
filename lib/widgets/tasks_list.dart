import 'package:flutter/material.dart';
import 'package:todoey_flutter/modals/task_data.dart';
import 'task_tile.dart';
import 'package:todoey_flutter/modals/tasks.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, TaskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            taskTitle: TaskData.task![index].name,
            isChecked: TaskData.task![index].isDone,
            CheckBoxCallBack: (checkboxState) {
              TaskData.updateTask(TaskData.task![index]);
            },
            longPressCallBack:() {TaskData.deleteTask(TaskData.task![index]);}
          );
        },
        itemCount: TaskData.taskCount,
      );
    });
  }
}
