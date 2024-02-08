import 'package:front/core/networking/api.result.dart';
import 'package:front/features/appointment/data/models/appointment.dart';
import 'package:front/features/appointment/domain/entities/appointment.dart';

abstract class AppointmentRepository {
  Future<ApiResult<List<Appointment>>> getAllAppointment();
  Future<ApiResult<Appointment>> createAppointment(AppointmentModel appointment);
  Future<ApiResult<Appointment>> getAppointment(String id);
  Future<ApiResult<void>> deleteAppointment(Appointment update);
  Future<ApiResult<Appointment>> reschedule(Appointment update);
}
