part of 'index.dart';

class AuthFromFiled extends StatelessWidget {
  const AuthFromFiled(
    this.hint, {
    required this.controller,
    this.show = true,
    super.key,
  });

  final String hint;
  final TextEditingController controller;
  final bool show;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 268.w,
      height: 40.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(100.r),
      ),
      child: TextFormField(
        controller: controller,
        obscureText: !show,
        textAlignVertical: TextAlignVertical.top,
        cursorHeight: 18.sp,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
            hintText: hint,
            hintStyle: AppTextStyle.hint.copyWith(
              fontSize: 14.sp,
              fontWeight: AppFontWeight.bold,
            ),
            border: InputBorder.none,
            isCollapsed: true,
            isDense: true,
            contentPadding: EdgeInsets.zero),
      ),
    );
  }
}
