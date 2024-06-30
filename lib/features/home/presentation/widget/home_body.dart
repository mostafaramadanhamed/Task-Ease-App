import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_ease/core/utils/spacing_extension.dart';
import 'package:task_ease/features/home/presentation/widget/tasks_list_view.dart';

import '../../logic/fetch task cubit/fetch_task_cubit.dart';
import 'date_time_horizontal.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  DateTime dateTime=DateTime.now();
  @override
  void initState(){
    BlocProvider.of<FetchTaskCubit>(context).fetchAllTasks();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16.0.w),
      child: Column(
        children: [
          16.ph,
          DatePickerHorizontal(dateTime: dateTime,onDateChange: (date){
            dateTime=date;
            setState(() {

            });
          },),
          32.ph,
          const Expanded(child: TaskListview()),
        ],
      ),
    );
  }
}