import 'package:flutter/material.dart';
import 'package:task_ease/core/widgets/default_appbar.dart';
import 'package:task_ease/features/add%20task/data/models/task_model.dart';
import 'package:task_ease/features/edit%20task/presentation/widgets/edit_task_form.dart';

class EditTaskScreen extends StatelessWidget {
  final TaskModel task;
  const EditTaskScreen({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildDefaultAppBar("Edit Task", context),
      body: SingleChildScrollView(
        child: EditTaskForm(task: task),
      )
    );
  }
}
