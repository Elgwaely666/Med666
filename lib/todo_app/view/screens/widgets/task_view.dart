import 'package:flutter/material.dart';
import 'package:flutter_application_1/todo_app/data/task_model.dart';

class TaskView extends StatelessWidget {
  final TaskModel task;
  final void Function(bool?)? onToggeled;
  final void Function(DismissDirection)? onDismissed;
  const TaskView({required this.onToggeled,  required this.task,required this.onDismissed, super.key});
  
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      background: Container(color: Colors.red,),
      onDismissed: onDismissed,
      key: ValueKey(task.id),
      child: ListTile(
        title: Text(task.title),
        subtitle: Text(task.subTitle),
        leading: CircleAvatar(radius: 50, child:  Text(task.date)),
        trailing: Checkbox(
            value: task.isChecked,
            onChanged: onToggeled),
      ),
    );
  }
}