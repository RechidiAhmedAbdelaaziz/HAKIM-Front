import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:front/core/Theme/colors.dart';

// ignore: must_be_immutable
class ContinueButton extends StatelessWidget {
  const ContinueButton({
    this.height = 45,
    this.width = 212,
    required this.title,
    required this.press,
    super.key,
  });

  final double height;
  final double width;

  final String title;
  final void Function()? press;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 74.w),
          width: width.w,
          height: height.h,
          decoration: ShapeDecoration(
            color: AppColors.blueText,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100.w),
            ),
          ),
          child: TextButton(
            onPressed: press,
            style: const ButtonStyle(
              alignment: Alignment.center,
            ),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.white,
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
