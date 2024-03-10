import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:front/core/constants/icons.dart';

// ignore: must_be_immutable
class Logo extends StatelessWidget {
  const Logo({
    required this.height,
    required this.width,
    super.key,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width.w,
      height: height.h,
      decoration: ShapeDecoration(
        image: const DecorationImage(
          image: AssetImage(AppImages.logo),
          fit: BoxFit.cover,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(132.r),
        ),
      ),
    );
  }
}
