import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:front/core/Theme/colors.dart';
import 'package:front/core/Theme/fonts.dart';
import 'package:front/core/injection/dependency.dart';
import 'package:front/core/widgets/separate.dart';
import 'package:front/features/posts/domain/entites/post.dart';
import 'package:front/features/posts/logic/post/post_cubit.dart';
import 'package:readmore/readmore.dart';

import 'widget/buttons_function.dart';
import 'widget/poster_info.dart';

class PostPox extends StatelessWidget {
  final Post post;
  const PostPox(this.post, {super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<PostCubit>(),
      child: Container(
        decoration: BoxDecoration(
            color: AppColor.white,
            border: Border.all(color: AppColor.blueDark, width: 1)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            height(7),
            PosterInfo(post: post),
            height(8),
            _post(),
            height(2),
            const Divider(color: AppColor.blueDark),
            height(2),
            FavCommentSaveButtons(save: () {}, like: () {}, comment: () {}),
            height(7),
          ],
        ),
      ),
    );
  }

  Container _post() {
    return Container(
      constraints: BoxConstraints(maxWidth: 355.w),
      margin: EdgeInsetsDirectional.only(start: 5.w),
      child: ReadMoreText(
        "${post.text}",
        trimLines: 3,
        style: TextStyle(
            color: AppColor.bluePost,
            fontSize: 13.sp,
            fontWeight: AppFontWeight.medium),
      ),
    );
  }
}
