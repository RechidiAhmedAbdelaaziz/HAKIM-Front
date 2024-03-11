part of 'index.dart';

class AppointmentActions extends StatelessWidget {
  const AppointmentActions({
    required void Function() cancel,
    required void Function() reschedule,
    super.key,
  })  : _cancel = cancel,
        _reschedule = reschedule;

  final void Function() _cancel;
  final void Function() _reschedule;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const Spacer(),
      _buildButton("Cancel",_cancel),
      width(8),
      _buildButton("Reschedule",_reschedule),
      const Spacer(),
    ]);
  }

  InkWell _buildButton(String title, void Function() onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.h),
        decoration: BoxDecoration(
            color: AppColors.white, borderRadius: BorderRadius.circular(10.r)),
        child: Text(title, style: AppTextStyle.body.copyWith(fontSize: 14.sp)),
      ),
    );
  }
}
