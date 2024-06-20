
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';
import 'font_helper.dart';

abstract class TextStyles{
  static TextStyle font24SemiBold=TextStyle(
    color: ColorsManager.kMainColor,
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle font19SemiBold=TextStyle(
    color: Colors.white,
    fontSize: 19.sp,
    fontWeight: FontWeightHelper.semiBold,
  );
static TextStyle font14Regular=TextStyle(
    color: ColorsManager.kSecondaryColor,
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
  );

static TextStyle font11Regular=TextStyle(
    color: ColorsManager.kMainColor,
    fontSize: 11.sp,
    fontWeight: FontWeightHelper.regular,
  );

static TextStyle font9Regular=TextStyle(
    color: ColorsManager.kSecondaryColor,
    fontSize: 9.sp,
    fontWeight: FontWeightHelper.regular,
  );


}