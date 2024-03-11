import 'package:front/core/networking/api.result.dart';
import 'package:front/features/appointment/data/models/appointment.dart';
import 'package:front/features/appointment/domain/entities/appointment.dart';

abstract class AppointmentRepository {
  Future<ApiResult<List<Appointment>>> getAllAppointment(int page,DateTime date);
  Future<ApiResult<Appointment>> createAppointment(
      AppointmentModel appointment);
  Future<ApiResult<Appointment>> getAppointment(String id);
  Future<ApiResult<bool>> deleteAppointment(AppointmentModel update);
  Future<ApiResult<Appointment>> update(AppointmentModel update);
}
