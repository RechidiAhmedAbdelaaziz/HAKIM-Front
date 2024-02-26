import 'package:front/core/networking/api.result.dart';
import 'package:front/core/usecase/usecase.dart';
import 'package:front/features/appointment/domain/entities/appointment.dart';
import 'package:front/features/appointment/domain/repo/appointment.dart';

class GetAllAppointmentUseCase
    implements UseCaseWithParams<List<Appointment>, int> {
  final AppointmentRepository _repository;

  GetAllAppointmentUseCase(this._repository);

  @override
  Future<ApiResult<List<Appointment>>> call(int page) async =>
      await _repository.getAllAppointment(page);
}
