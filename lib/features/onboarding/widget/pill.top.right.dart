import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PillsTopRight extends StatelessWidget {
  const PillsTopRight({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PositionedDirectional(
      end: -20,
      top: -12,
      child: Transform.rotate(
        angle: 6.247353697636143,
        child: Container(
          width: 111.w,
          height: 127.h,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/top-right.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
