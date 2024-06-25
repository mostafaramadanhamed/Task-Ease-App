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
  final TextInputType? textInputType;
  final bool ? isObscureText;
  final Widget ? suffixIcon;
  final Color ? backgroundColor;
  const AppTextFormField({
    super.key,
    this.contentPadding, this.focusedBorder,
    this.enabledBorder, this.inputTextStyle,
    this.hintStyle, required this.hintText,
    this.isObscureText, this.suffixIcon, this.backgroundColor, this.textInputType,
  });

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      keyboardType: textInputType??TextInputType.text,

      decoration: InputDecoration(
        filled: true,
        fillColor:Colors.white,
        isDense: true,
        contentPadding: contentPadding?? EdgeInsets.symmetric(
          horizontal:20.w ,
          vertical: 18.h,
        ),
        focusedBorder:focusedBorder?? OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide:const BorderSide(
            color: ColorsManager.kPrimaryColor,
            width: 1.3,
          ),
        ),
        enabledBorder:enabledBorder??  OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide:const BorderSide(
            color: ColorsManager.kPrimaryLightColor,
            width: 1.3,
          ),
        ),
        hintStyle:hintStyle?? TextStyles.font14Regular,
        hintText: hintText,
        suffixIcon: suffixIcon,
      ),
      obscureText: isObscureText??false,
      style: inputTextStyle?? TextStyles.font15Medium,
    );
  }
}