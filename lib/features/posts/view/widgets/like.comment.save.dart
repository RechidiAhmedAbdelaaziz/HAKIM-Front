part of 'index.dart';

class LikeCommentSaveButtons extends StatelessWidget {
  final void Function() _like;
  final void Function() _save;
  final void Function() _comment;

  const LikeCommentSaveButtons({
    super.key,
    required void Function() like,
    required void Function() save,
    required void Function() comment,
  })  : _comment = comment,
        _save = save,
        _like = like;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        width(8),
        _button(AppIcons.love, _like),
        width(17),
        _button(AppIcons.comment, _comment),
        const Spacer(),
        _button(AppIcons.save, _save),
        width(13),
      ],
    );
  }

  InkWell _button(String icon, void Function() onTap) {
    return InkWell(
      onTap: onTap,
      child: SvgPicture.asset(icon, height: 22.h),
    );
  }
}
