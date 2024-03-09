import 'package:front/core/networking/api.result.dart';
import 'package:front/core/usecase/usecase.dart';
import 'package:front/features/appointment/domain/entities/appointment.dart';
import 'package:front/features/appointment/domain/repo/appointment.dart';

class CreateAppointmentUseCase implements UseCase<Appointment, Appointment> {
  final AppointmentRepository _repository;

  CreateAppointmentUseCase(this._repository);

  @override
  Future<ApiResult<Appointment>> call(Appointment appointment) async =>
      await _repository.createAppointment(appointment.toModel());
}
