import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:front/core/Theme/colors.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    super.key,
    required this.height,
    required this.pic,
    this.radius = 360,
  });
  final double height;
  final String pic;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height.h,
      width: height.h,
      decoration: BoxDecoration(
          color: AppColors.grey,
          image: DecorationImage(
              image: NetworkImage(pic),
              onError: (exception, stackTrace) {},
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high),
          borderRadius: BorderRadius.circular(radius.r)),
    );
  }
}
