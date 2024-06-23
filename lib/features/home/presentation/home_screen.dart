import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_ease/core/styles/colors.dart';
import 'package:task_ease/core/utils/spacing_extension.dart';
import 'package:task_ease/features/home/presentation/widget/hello_row.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
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
              const HelloRow(),
            ],
          ),
        ),
      ),
    );
  }
}

