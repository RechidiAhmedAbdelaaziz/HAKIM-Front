import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:front/core/Theme/colors.dart';
import 'package:front/core/widgets/separate.dart';

import '../domain/entites/post.dart';
import 'widgets/index.dart';

class PostBox extends StatelessWidget {
  const PostBox(this._post, {super.key});

  final Post _post;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(25.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          height(8),
          PosterInfo(_post.poster!, _post.date!),
          height(20),
          PostBody(_post.text!, 'IMGurl'),
          height(4),
          const Divider(color: AppColors.grey, height: 1),
          height(6),
          LikeCommentSaveButtons(
            like: () {},
            comment: () {},
            save: () {},
          ),
          height(12),
        ],
      ),
    );
  }
}
