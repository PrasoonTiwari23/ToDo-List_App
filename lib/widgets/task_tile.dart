import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked ;
  final String taskTitle;
  final  CheckBoxCallBack;
  final  longPressCallBack;
  TaskTile({required this.isChecked,required this.taskTitle,required this.CheckBoxCallBack,required this.longPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(
        taskTitle,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing:Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged:CheckBoxCallBack
      ),
      );
  }
}


