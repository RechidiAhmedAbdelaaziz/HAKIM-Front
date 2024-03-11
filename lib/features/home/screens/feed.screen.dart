import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:front/core/Theme/colors.dart';
import 'package:front/core/constants/icons.dart';

import '../widgets/index.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 50.h,
          width: 126.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(132.r),
              image: const DecorationImage(
                image: AssetImage(AppImages.logoHorizontal),
                fit: BoxFit.cover,
              )),
        ),
        Scaffold(
          backgroundColor: AppColors.white,
          appBar: AppBar(
            actions: [
              InkWell(
                child: SvgPicture.asset(AppIcons.notification),
              ),
            ],
          ),
          body: const Column(
            children: [
              UpcomingAppointment(),
              Expanded(
                child: Posts(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
