import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_ease/core/routing/routes.dart';
import 'package:task_ease/core/routing/routing_extension.dart';
import 'package:task_ease/core/styles/colors.dart';
import 'package:task_ease/core/styles/text_styles.dart';
import 'package:task_ease/core/utils/spacing_extension.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          context.pushNamed(Routes.addTaskScreen);
        },
        backgroundColor: ColorsManager.kPrimaryColor.withOpacity(0.3),
        elevation: 0,
        child: const Icon(Icons.add_outlined,color: ColorsManager.kPrimaryColor,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16.0.w),
          child: Column(
            children: [
              16.ph,
              EasyDateTimeLine(
                initialDate: DateTime.now(),
                onDateChange: (selectedDate) {
                  //`selectedDate` the new date selected.
                },
                headerProps:  EasyHeaderProps(
                  monthPickerType: MonthPickerType.switcher,
                  dateFormatter: const DateFormatter.fullDateDMY(),
                  selectedDateStyle: TextStyles.font18Bold,
                  monthStyle: TextStyles.font18Bold,
                ),
                dayProps:  EasyDayProps(
                  dayStructure: DayStructure.dayStrDayNum,
                  inactiveDayStyle: DayStyle(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          const Color(0xff8426D6).withOpacity(0.5),
                          const Color(0xff8426D6).withOpacity(0.3),
                          const Color(0xff8426D6).withOpacity(0.2),
                          const Color(0xff8426D6).withOpacity(0.1),
                          const Color(0xff8426D6).withOpacity(0.2),
                          const Color(0xff8426D6).withOpacity(0.3),
                          const Color(0xff8426D6).withOpacity(0.5),
                          ],
                      ),
                    ),
                  ),
                  activeDayStyle: const DayStyle(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xff3371FF),
                          Color(0xff8426D6),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

