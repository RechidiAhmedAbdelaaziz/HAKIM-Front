import 'package:front/core/networking/api.result.dart';
import 'package:front/core/types/usecase.dart';
import 'package:front/features/appointment/domain/entities/appointment.dart';
import 'package:front/features/appointment/domain/repo/appointment.dart';

class GetAllAppointmentUseCase implements UseCaseEmpty<List<Appointment>> {
  final AppointmentRepository _repository;

  GetAllAppointmentUseCase(this._repository);

  @override
  Future<ApiResult<List<Appointment>>> call() async =>
      await _repository.getAllAppointment();
}
