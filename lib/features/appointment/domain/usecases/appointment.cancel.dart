import 'package:front/core/networking/api.result.dart';
import 'package:front/core/usecase/usecase.dart';

import '../entities/appointment.dart';
import '../repo/appointment.dart';

class CancelAppointmentUseCase implements UseCase<bool, Appointment> {
  final AppointmentRepository _repository;

  CancelAppointmentUseCase(this._repository);

  @override
  Future<ApiResult<bool>> call(Appointment appointment) async =>
      await _repository.deleteAppointment(appointment.toModel());
}
