import 'package:front/core/networking/api.result.dart';
import 'package:front/core/usecase/usecase.dart';

import '../../data/models/appointment.dart';
import '../../domain/repo/appointment.dart';

class CancelAppointmentUseCase implements UseCase<bool, AppointmentModel> {
  final AppointmentRepository _repository;

  CancelAppointmentUseCase(this._repository);

  @override
  Future<ApiResult<bool>> call(AppointmentModel appointment) async =>
      await _repository.deleteAppointment(appointment);
}
