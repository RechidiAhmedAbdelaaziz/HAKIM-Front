import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PillsTopRight extends StatelessWidget {
  const PillsTopRight({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 249.w,
      top: 0.29.h,
      child: Transform(
        transform: Matrix4.identity()
          ..translate(0.0, 0.0)
          ..rotateZ(-0.13),
        child: SizedBox(
          width: 120.87.w,
          height: 127.81.h,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Transform(
                transform: Matrix4.identity()
                  ..translate(0.0, 0.0)
                  ..rotateZ(0.04),
                child: Container(
                  width: 116.52.w,
                  height: 123.72.h,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/splash/top-right.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
