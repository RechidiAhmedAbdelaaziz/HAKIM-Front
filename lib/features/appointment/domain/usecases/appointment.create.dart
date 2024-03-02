import 'package:front/core/networking/api.result.dart';
import 'package:front/core/usecase/usecase.dart';
import 'package:front/features/appointment/data/models/appointment.dart';
import 'package:front/features/appointment/domain/repo/appointment.dart';

class CreateAppointmentUseCase
    implements UseCase<String?, AppointmentModel> {
  final AppointmentRepository _repository;

  CreateAppointmentUseCase(this._repository);

  @override
  Future<ApiResult<String?>> call(AppointmentModel appointment) async =>
      await _repository.createAppointment(appointment);
}
