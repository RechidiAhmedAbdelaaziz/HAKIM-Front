import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:front/core/Theme/colors.dart';
import 'package:front/core/Theme/fonts.dart';
import 'package:front/core/widgets/profile.pic.dart';
import 'package:front/features/auth/domain/enitities/doctor.dart';

import 'package:front/features/posts/domain/entites/post.dart';

class PosterInfo extends StatelessWidget {
  const PosterInfo({
    super.key,
    required this.post,
  });

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: 9.w),
      child: _PosterInfo(post: post, poster: post.poster),
    );
  }
}

class _PosterInfo extends StatelessWidget {
  const _PosterInfo({
    required this.post,
    required this.poster,
  });

  final Post post;
  final Doctor poster;

  @override
  Widget build(BuildContext context) {
    PositionedDirectional date() {
      return PositionedDirectional(
        start: 47.w,
        top: 20.h,
        child: Text(
          post.date.toIso8601String(),
          style: TextStyle(
              color: AppColor.grey,
              fontSize: 10.sp,
              fontWeight: AppFontWeight.medium),
        ),
      );
    }

    PositionedDirectional posterName(String name) {
      return PositionedDirectional(
        start: 48.w,
        top: 1.h,
        child: Text(
          name,
          style: TextStyle(
              color: AppColor.blueText,
              fontSize: 15.sp,
              fontWeight: AppFontWeight.bold),
        ),
      );
    }

    return SizedBox(
      width: double.infinity,
      height: 47.h,
      child: Stack(
        children: [
          ProfilePic(
            height: 40,
            pic: "poster.pic",
          ),
          posterName("poster.name"),
          date(),
        ],
      ),
    );
  }
}
