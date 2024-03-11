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

  AppointmentRepositoryImpl(
      {required AppointmentRemoteDataSource remote,
      required ApponitmentLocalSourceData local,
      required NetworkInfo info})
      : _remote = remote;

  @override
  Future<ApiResult<Appointment>> createAppointment(
      AppointmentModel appointment) async {
    callback() async {
      final response = await _remote.createAppointment(appointment);
      final data =
          Appointment.fromModel(appointment).copyWith(id: response.data);
      return ApiResult.sucess(data);
    }

    return await TryCallApi(callback).call();
  }

  @override
  Future<ApiResult<bool>> deleteAppointment(AppointmentModel update) async {
    callback() async {
      final response = await _remote.deleteAppointment(update.id!);

      return ApiResult.sucess(response.status == true);
    }

    return await TryCallApi(callback).call();
  }

  @override
  Future<ApiResult<List<Appointment>>> getAllAppointment(
      int page, DateTime date) async {
    callback() async {
      final response = await _remote.getAllAppointments(
        page,
        {"date": date.toIso8601String()},
      );

      if (page > response.pagination!.pagesNumber!) {
        return const ApiResult.sucess(<Appointment>[]);
      }

      List<Appointment> data = [];
      for (final appointment in response.data!) {
        final x = Appointment.fromModel(appointment);
        data.add(x);
      }

      return ApiResult.sucess(data);
    }

    return await TryCallApi(callback).call();
  }

  @override
  Future<ApiResult<Appointment>> getAppointment(String id) async {
    callback() async {
      final response = await _remote.getAppointment(id);
      final data = Appointment.fromModel(response.data);
      return ApiResult.sucess(data);
    }

    return await TryCallApi(callback).call();
  }

  @override
  Future<ApiResult<Appointment>> update(AppointmentModel update) async {
    callback() async {
      final response =
          await _remote.updateAppointment(update.id!, DateTime.now());
      final data = Appointment.fromModel(response.data);
      return ApiResult.sucess(data);
    }

    return await TryCallApi(callback).call();
  }
}
