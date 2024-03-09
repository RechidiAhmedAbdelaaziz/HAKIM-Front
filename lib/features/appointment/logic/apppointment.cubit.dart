import 'package:bloc/bloc.dart';
import 'package:front/core/networking/api.result.dart';
import 'package:front/core/networking/error.handler.dart';
import 'package:front/core/types/app_state.dart';
import 'package:front/features/appointment/domain/entities/appointment.dart';
import 'package:front/features/appointment/domain/usecases/index.dart';

class AppointmentCubit extends Cubit<AppState<Appointment>> {
  final AppointmentUseCases _useCases;
  AppointmentCubit(this._useCases) : super(const AppState.initial());

  late Appointment _appointment;
  Appointment get appointment => _appointment;
  set setAppointment(Appointment x) => _appointment = x;

  Future reschedule() async {
    _loading();
    final result = await _useCases.reschedule(_appointment);
    _handleResult(result, _rescheduled);
  }

  void _rescheduled(Appointment x) {
    _appointment = x;
    emit(AppState.loaded(_appointment));
  }

  void _loading() => emit(const AppState.loading());
  void _error(ErrorHandler x) =>
      emit(AppState.error(x.apiErrorModel.message ?? ''));

  void _handleResult<T>(ApiResult<T> result, void Function(T) sucess) =>
      result.when(sucess: sucess, failure: _error);
}
