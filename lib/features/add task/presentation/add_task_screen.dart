import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:task_ease/core/utils/spacing_extension.dart';
import 'package:task_ease/core/widgets/app_button.dart';
import 'package:task_ease/core/widgets/app_text_field.dart';
import 'package:task_ease/core/widgets/default_appbar.dart';

import '../../../core/styles/colors.dart';
import '../../../core/styles/text_styles.dart';

class AddTaskScreen extends StatefulWidget {

   const AddTaskScreen({super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
   DateTime ?initialDate = DateTime.now(); // Default to current date
   TimeOfDay ?initialTime = TimeOfDay.now(); // Default to current date

  Future<DateTime?> selectDate(BuildContext context, Function(DateTime) onDateSelected) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      onDateSelected(picked);  // Call the callback with selected date
    }
    return picked;
  }
Future<TimeOfDay?> selectTime(BuildContext context, Function(TimeOfDay) onTimeSelected) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context, initialTime: TimeOfDay.now(),

    );
    if (picked != null) {
      onTimeSelected(picked);  // Call the callback with selected date
    }
    return picked;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildDefaultAppBar("Add Project", context),
      body:  Padding(
        padding:EdgeInsets.symmetric(horizontal: 22.0.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              24.ph,
              const AppTextFormField(hintText: "Task Group"),
              24.ph,
              const AppTextFormField(hintText: "Project Name"),
              24.ph,
              const AppTextFormField(hintText: "Description",maxLine: 6,textInputType: TextInputType.multiline,),
              24.ph,
              ListTile(
                onTap: () async {
                 initialDate = await selectDate(context, (date) {
                    setState(() {
                      initialDate = date;
                    });
                  });
                },
                tileColor: Colors.white,
                splashColor: ColorsManager.kPrimaryLightColor,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
                leading: const Icon(Icons.calendar_month_sharp, color: ColorsManager.kPrimaryColor),
                title: Text(
                  DateFormat.yMMMEd().format(initialDate ?? DateTime.now()),
                  style: TextStyles.font18SemiBold,
                ),
              ),
              24.ph,
              ListTile(
                onTap: () async {
                 initialTime = await selectTime(context, (time) {
                    setState(() {
                      initialTime = time;
                    });
                  });
                },
                tileColor: Colors.white,
                splashColor: ColorsManager.kPrimaryLightColor,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
                leading: const Icon(Icons.watch_later, color: ColorsManager.kPrimaryColor),
                title: Text(
                initialTime!.format(context),
                  style: TextStyles.font18SemiBold,
                ),
              ),
              24.ph,
              AppTextButton(buttonText: "Add Project", onPressed:() {

              })
            ],
          ),
        ),
      ),
    );
  }
}
