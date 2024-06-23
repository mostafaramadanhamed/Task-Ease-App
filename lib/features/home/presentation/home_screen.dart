import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_ease/core/styles/colors.dart';
import 'package:task_ease/core/utils/spacing_extension.dart';
import 'package:task_ease/features/home/presentation/widget/hello_row.dart';

import '../../../core/styles/text_styles.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

