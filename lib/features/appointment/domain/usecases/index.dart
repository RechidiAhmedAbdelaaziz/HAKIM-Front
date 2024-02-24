import 'appointemtn.getall.dart';
import 'appointment.create.dart';
import 'appointment.getbyid.dart';

class AppointmentUseCases {
  final CreateAppointmentUseCase _create;
  final GetOneAppointmentUseCase _getOne;
  final GetAllAppointmentUseCase _getAll;

  AppointmentUseCases(
      {required CreateAppointmentUseCase create,
      required GetOneAppointmentUseCase getOne,
      required GetAllAppointmentUseCase getAll})
      : _create = create,
        _getOne = getOne,
        _getAll = getAll;
}
