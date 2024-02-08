import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconButtonWidget extends StatelessWidget {
  final String icon;
  final double size;
  final Function() onTap;
  const IconButtonWidget(this.icon, this.onTap,
      {super.key, this.size = 24, required});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: SvgPicture.asset(icon, height: size.h),
    );
  }
}
