import 'package:front/core/networking/api.result.dart';
import 'package:front/core/types/usecase.dart';
import 'package:front/features/appointment/data/models/appointment.dart';
import 'package:front/features/appointment/domain/entities/appointment.dart';
import 'package:front/features/appointment/domain/repo/appointment.dart';

class CreateAppointmentUseCase
    implements UseCaseWithParams<Appointment, String> {
  final AppointmentRepository _repository;

  CreateAppointmentUseCase(this._repository);

  @override
  Future<ApiResult<Appointment>> call(String id) {
    return _repository.getAppointment(id);
  }
}
