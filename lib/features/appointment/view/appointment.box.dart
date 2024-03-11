import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:front/core/Theme/colors.dart';
import 'package:front/core/injection/dependency.dart';
import 'package:front/core/widgets/profile.pic.dart';
import 'package:front/core/widgets/separate.dart';
import 'package:front/features/appointment/logic/appointments.cubit.dart';
import 'package:front/features/appointment/logic/apppointment.cubit.dart';

import '../domain/entities/appointment.dart';
import 'package:front/features/auth/domain/enitities/doctor.dart';
import 'widgets/index.dart';

class AppointmentBox extends StatelessWidget {
  const AppointmentBox(this._appointment, {super.key});

  final Appointment _appointment;

  Expanded _buildInfo(Doctor doctor, DateTime date) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          height(7),
          DrInfo(doctor: doctor),
          height(5),
          TimeAndType(date: date, type: _appointment.type!),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final doctor = _appointment.doctor!;
    final date = _appointment.date!;
    return BlocProvider(
      create: (context) {
        final cubit = locator<AppointmentCubit>();
        cubit.setAppointment = _appointment;
        return cubit;
      },
      child: Builder(builder: (context) {
        return Container(
          // height: 120.h,
          width: 237.w,
          decoration: BoxDecoration(
            color: AppColors.blue,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Column(
            children: [
              height(4),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  width(8),
                  ProfilePic(
                    height: 60,
                    pic: doctor.info!.pic!,
                    radius: 10,
                  ),
                  width(8),
                  _buildInfo(doctor, date),
                ],
              ),
              height(4),
              AppointmentActions(
                cancel: () async {
                  await context
                      .read<AppointmentsCubit>()
                      .cancelAppointment(_appointment);
                },
                reschedule: () async {
                  await context.read<AppointmentCubit>().reschedule();
                },
              ),
            ],
          ),
        );
      }),
    );
  }
}
