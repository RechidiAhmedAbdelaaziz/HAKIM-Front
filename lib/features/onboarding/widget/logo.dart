import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class Logo extends StatelessWidget {
  Logo({
    this.top = 242,
    this.left = 14.78,
    this.height = 247.81,
    this.width = 322.46,
    super.key,
  });
  double top;
  double width;
  double height;
  double left;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left.w,
      top: top.h,
      child: Container(
        width: width.w,
        height: height.h,
        decoration: ShapeDecoration(
          image: const DecorationImage(
            image: AssetImage("assets/splash/logo.png"),
            fit: BoxFit.cover,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(132.w),
          ),
        ),
      ),
    );
  }
}
