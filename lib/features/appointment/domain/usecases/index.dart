// ignore_for_file: unused_field

import 'appointemtn.getall.dart';
import 'appointment.cancel.dart';
import 'appointment.create.dart';
import 'appointment.getbyid.dart';
import 'appointment.reschedule.dart';

class AppointmentUseCases {
  AppointmentUseCases(
      {required CreateAppointmentUseCase create,
      required GetOneAppointmentUseCase getOne,
      required GetAllAppointmentUseCase getAll,
      required CancelAppointmentUseCase cancel,
      required RescheduleAppointmentUseCase resched})
      : _create = create,
        _getOne = getOne,
        _getAll = getAll,
        _cancel = cancel,
        _resched = resched;

  final CreateAppointmentUseCase _create;
  final GetOneAppointmentUseCase _getOne;
  final GetAllAppointmentUseCase _getAll;
  final CancelAppointmentUseCase _cancel;
  final RescheduleAppointmentUseCase _resched;
}
