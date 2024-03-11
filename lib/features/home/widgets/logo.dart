part of 'index.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PositionedDirectional(
      top: 31.h,
      start: 5.w,
      child: Container(
        height: 50.h,
        width: 126.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(132.r),
            image: const DecorationImage(
              image: AssetImage(AppImages.logoHorizontal),
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}
