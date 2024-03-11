part of 'index.dart';

class TimeAndType extends StatelessWidget {
  const TimeAndType({
    super.key,
    required DateTime date,
    required String type,
  })  : _type = type,
        _date = date;

  final DateTime _date;
  final String _type;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BlocBuilder<AppointmentCubit, AppState<Appointment>>(
          builder: (context, state) {
            return Text(
              "Today | ${_date.hour}:${_date.minute}",
              style: AppTextStyle.title.copyWith(fontSize: 11.sp),
            );
          },
        ),
        const Spacer(),
        Text(
          _type,
          style: AppTextStyle.title.copyWith(fontSize: 11.sp),
        ),
        width(9),
      ],
    );
  }
}
