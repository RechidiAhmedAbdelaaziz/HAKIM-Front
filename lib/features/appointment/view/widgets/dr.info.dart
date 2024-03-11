part of 'index.dart';

class DrInfo extends StatelessWidget {
  const DrInfo({
    super.key,
    required this.doctor,
  });

  final Doctor doctor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          doctor.name!,
          style: AppTextStyle.title.copyWith(
            fontSize: 12.sp,
          ),
        ),
        Text(
          doctor.specialization!,
          style: AppTextStyle.hint.copyWith(
            color: AppColors.blueDark,
          ),
        ),
      ],
    );
  }
}
