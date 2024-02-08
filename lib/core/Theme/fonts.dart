import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';

class AppFontFamily {
  static const String inter = "Inter";
}

class AppFontWeight {
  static const FontWeight extraLight = FontWeight.w200;
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight extraBold = FontWeight.w800;
}

class AppFontStyle {
  static TextStyle h1 = TextStyle(
      fontSize: 20.sp,
      color: AppColor.blueDark,
      fontWeight: AppFontWeight.extraBold);

  static TextStyle h2 = TextStyle(
      fontSize: 15.sp,
      color: AppColor.blueText,
      fontWeight: AppFontWeight.bold);

  static TextStyle h3 = TextStyle(
      fontSize: 11.sp,
      color: AppColor.blueText,
      fontWeight: AppFontWeight.bold);

  static TextStyle normal = TextStyle(
      fontSize: 11.sp,
      color: AppColor.blueText,
      fontWeight: AppFontWeight.medium);
}