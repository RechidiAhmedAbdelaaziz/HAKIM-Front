import 'package:front/core/networking/api.result.dart';
import 'package:front/core/usecase/usecase.dart';

import '../repo/appointment.dart';
import '../entities/appointment.dart';

class RescheduleAppointmentUseCase
    implements UseCase<Appointment, Appointment> {
  final AppointmentRepository _repository;

  RescheduleAppointmentUseCase(this._repository);

  @override
  Future<ApiResult<Appointment>> call(Appointment appointment) async =>
      await _repository.update(appointment.toModel());
}
