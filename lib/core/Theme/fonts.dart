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

class AppTextStyle {
  static TextStyle title = TextStyle(
    color: AppColors.blueDark,
    fontWeight: AppFontWeight.bold,
    fontSize: 15.sp,
  );
  static TextStyle body = TextStyle(
    color: AppColors.blueDark,
    fontWeight: AppFontWeight.medium,
    fontSize: 13.sp,
  );

  static TextStyle hint = TextStyle(
    color: AppColors.greyLight,
    fontWeight: AppFontWeight.medium,
    fontSize: 10.sp,
  );
}
