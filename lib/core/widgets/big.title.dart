import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:front/core/Theme/colors.dart';
import 'package:front/core/Theme/fonts.dart';

class BigTitle extends StatelessWidget {
  const BigTitle({
    required this.title,
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: 10.w),
      child: Text(
        title,
        style: TextStyle(
          color: AppColors.blueText,
          fontSize: 20.sp,
          fontWeight: AppFontWeight.extraBold,
          height: 0,
        ),
      ),
    );
  }
}
