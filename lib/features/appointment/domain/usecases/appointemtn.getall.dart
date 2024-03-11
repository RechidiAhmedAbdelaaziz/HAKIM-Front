import 'package:front/core/networking/api.result.dart';
import 'package:front/core/usecase/usecase.dart';
import 'package:front/features/appointment/domain/entities/appointment.dart';
import 'package:front/features/appointment/domain/repo/appointment.dart';

class GetAppointmentsParams {
  GetAppointmentsParams({required this.page, required this.date});

  final int page;
  final DateTime date;

  Map<String, dynamic> toJson() => {"date": date.toIso8601String()};
}

class GetAllAppointmentUseCase
    implements UseCase<List<Appointment>, GetAppointmentsParams> {
  final AppointmentRepository _repository;

  GetAllAppointmentUseCase(this._repository);

  @override
  Future<ApiResult<List<Appointment>>> call(
          GetAppointmentsParams params) async =>
      await _repository.getAllAppointment(params.page, params.date);
}
