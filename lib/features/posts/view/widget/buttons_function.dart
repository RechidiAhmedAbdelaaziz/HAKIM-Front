import 'package:flutter/material.dart';
import 'package:front/core/constants/icons.dart';
import 'package:front/core/widgets/icon.button.dart';
import 'package:front/core/widgets/separate.dart';


class FavCommentSaveButtons extends StatelessWidget {
  final dynamic Function() like;
  final dynamic Function() comment;
  final dynamic Function() save;
  final bool isLiked;
  const FavCommentSaveButtons({
    super.key,
    required this.like,
    required this.comment,
    required this.save,
    this.isLiked= false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        width(7),
        IconButtonWidget(isLiked ? AppIcons.love : AppIcons.home, like),
        width(20),
        IconButtonWidget(AppIcons.comment, comment),
        const Spacer(),
        IconButtonWidget(AppIcons.save, save),
        width(13),
      ],
    );
  }
}
