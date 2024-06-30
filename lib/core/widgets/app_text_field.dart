import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styles/colors.dart';
import '../styles/text_styles.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry ? contentPadding;
  final InputBorder ? focusedBorder;
  final InputBorder ? enabledBorder;
  final TextStyle ? inputTextStyle;
  final TextStyle ? hintStyle;
  final String hintText;
  final int ? maxLine;
  final TextInputType? textInputType;
  final bool ? isObscureText;
  final Widget ? suffixIcon;
  final Color ? backgroundColor;
  final TextEditingController  controller;
  const AppTextFormField({
    super.key,
    this.contentPadding, this.focusedBorder,
    this.enabledBorder, this.inputTextStyle,
    this.hintStyle, required this.hintText,
    this.isObscureText, this.suffixIcon, this.backgroundColor, this.textInputType, this.maxLine, required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      controller:controller ,
      keyboardType: textInputType??TextInputType.text,
      maxLines: maxLine,
      decoration: InputDecoration(
        filled: true,
        fillColor:Colors.white,
        isDense: true,
        contentPadding: contentPadding?? EdgeInsets.symmetric(
          horizontal:15.w ,
          vertical: 15.h,
        ),
        focusedBorder:focusedBorder?? OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.r),
          borderSide:const BorderSide(
            color: ColorsManager.kPrimaryColor,
            width: 1.3,
          ),
        ),
        enabledBorder:enabledBorder??  OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.r),
          borderSide:const BorderSide(
            color: Colors.white,
            width: 1.3,
          ),
        ),
        hintStyle:hintStyle?? TextStyles.font14Regular,
        labelStyle:hintStyle?? TextStyles.font14Regular,
        hintText: hintText,
        labelText: hintText,
        suffixIcon: suffixIcon,
      ),
      obscureText: isObscureText??false,
      style: inputTextStyle?? TextStyles.font15Medium,
    );
  }
}