import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:front/core/Theme/colors.dart';

// ignore: must_be_immutable
class ProfilePic extends StatelessWidget {
  ProfilePic({
    super.key,
    required this.height,
    required this.pic,
    this.radius = 360,
  });
  final double height;
  final String pic;
  double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height.h,
      width: height.h,
      decoration: BoxDecoration(
          color: AppColor.grey,
          image: DecorationImage(
              image: NetworkImage(pic),
              onError: (exception, stackTrace) {
                
              },
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high),
          borderRadius: BorderRadius.circular(radius.r)),
    );
  }
}
