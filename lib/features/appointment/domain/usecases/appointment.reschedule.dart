import 'package:front/core/networking/api.result.dart';
import 'package:front/core/usecase/usecase.dart';

import '../../data/models/appointment.dart';
import '../../domain/repo/appointment.dart';
import '../entities/appointment.dart';

class RescheduleAppointmentUseCase
    implements UseCaseWithParams<Appointment, AppointmentModel> {
  final AppointmentRepository _repository;

  RescheduleAppointmentUseCase(this._repository);

  @override
  Future<ApiResult<Appointment>> call(AppointmentModel appointment) async =>
      await _repository.update(appointment);
}
