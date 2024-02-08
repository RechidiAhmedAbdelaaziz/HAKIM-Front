import 'package:front/core/networking/api.result.dart';
import 'package:front/core/networking/api.try_catch.dart';
import 'package:front/core/networking/info.dart';
import 'package:front/features/appointment/data/models/appointment.dart';
import 'package:front/features/appointment/data/source/appointment.local.dart';
import 'package:front/features/appointment/data/source/appointment.remote.dart';
import 'package:front/features/appointment/domain/entities/appointment.dart';
import 'package:front/features/appointment/domain/repo/appointment.dart';

class AppointmentRepositoryImpl implements AppointmentRepository {
  final AppointmentRemoteDataSource _remote;
  final ApponitmentLocalSourceData _local;
  final NetworkInfo _info;

  AppointmentRepositoryImpl(
      {required AppointmentRemoteDataSource remote,
      required ApponitmentLocalSourceData local,
      required NetworkInfo info})
      : _remote = remote,
        _local = local,
        _info = info;

  @override
  Future<ApiResult<Appointment>> createAppointment(
      AppointmentModel appointment) {
    callback() async {
      final response = await _remote.createAppointment(appointment);
      final data = Appointment.fromModel(response.data!);
      return ApiResult.sucess(data);
    }

    return TryCallApi(callback).call();
  }

  @override
  Future<ApiResult<void>> deleteAppointment(Appointment update) {
    callback() async {
      await _remote.deleteAppointment(update.id);
      return const ApiResult.sucess(null);
    }

    return TryCallApi(callback).call();
  }

  @override
  Future<ApiResult<List<Appointment>>> getAllAppointment() {
    callback() async {
      final response = await _remote.getAllAppointments();
      final data = response.data!.map((e) => Appointment.fromModel(e)).toList();
      return ApiResult.sucess(data);
    }

    return TryCallApi(callback).call();
  }

  @override
  Future<ApiResult<Appointment>> getAppointment(String id) {
    callback() async {
      final response = await _remote.getAppointment(id);
      final data = Appointment.fromModel(response.data!);
      return ApiResult.sucess(data);
    }

    return TryCallApi(callback).call();
  }

  @override
  Future<ApiResult<Appointment>> reschedule(Appointment update) {
    callback() async {
      final response =
          await _remote.updateAppointment(update.id, update.toModel());
      final data = Appointment.fromModel(response.data!);
      return ApiResult.sucess(data);
    }

    return TryCallApi(callback).call();
  }
}
