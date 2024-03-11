part of 'index.dart';

class UpcomingAppointment extends StatelessWidget {
  const UpcomingAppointment({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppointmentsCubit, AppState<List<Appointment>>>(
      listener: (context, state) {},
      builder: (context, state) => state.when(
          initial: () => _indicator(Colors.cyan),
          loading: () => _indicator(Colors.orange),
          loaded: _buildList,
          error: (err) => _indicator(Colors.red)),
    );
  }

  Center _indicator(Color color) {
    return Center(
      child: CircularProgressIndicator(
        color: color,
      ),
    );
  }

  Widget _buildList(List<Appointment> list) {
    return SizedBox(
      height: 100.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          width(10),
          ListView.separated(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (_, i) => AppointmentBox(list[i]),
            separatorBuilder: (_, __) => width(8),
            itemCount: list.length,
          ),
        ],
      ),
    );
  }
}
