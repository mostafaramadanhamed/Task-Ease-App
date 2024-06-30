import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_ease/features/add%20task/data/models/task_model.dart';
import 'package:task_ease/features/home/logic/fetch%20task%20cubit/fetch_task_cubit.dart';
import 'package:task_ease/features/home/presentation/widget/task_item.dart';

class TaskListview extends StatelessWidget {
  const TaskListview({Key? key, required this.dateTime,}) : super(key: key);
final DateTime dateTime;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchTaskCubit, FetchTaskState>(
      builder: (context, state) {
        List<TaskModel>tasks = BlocProvider
            .of<FetchTaskCubit>(context)
            .tasks!.where((element) => element.selectedDate==dateTime).toList();
        return ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: tasks.length,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return TaskItem(
              taskModel: tasks[index],
            );
          },
        );
      },
    );
  }
}