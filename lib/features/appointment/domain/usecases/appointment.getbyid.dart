import 'package:front/core/networking/api.result.dart';
import 'package:front/core/usecase/usecase.dart';
import 'package:front/features/appointment/domain/entities/appointment.dart';
import 'package:front/features/appointment/domain/repo/appointment.dart';

class GetOneAppointmentUseCase implements UseCase<Appointment, String> {
  final AppointmentRepository _repository;

  GetOneAppointmentUseCase(this._repository);

  @override
  Future<ApiResult<Appointment>> call(String id) {
    return _repository.getAppointment(id);
  }
}
