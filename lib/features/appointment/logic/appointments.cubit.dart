import 'package:bloc/bloc.dart';
import 'package:front/core/networking/api.result.dart';
import 'package:front/core/networking/error.handler.dart';
import 'package:front/core/types/app_state.dart';
import 'package:front/features/appointment/domain/usecases/index.dart';

import '../domain/entities/appointment.dart';

class AppointmentsCubit extends Cubit<AppState<List<Appointment>>> {
  final AppointmentUseCases _useCases;
  AppointmentsCubit(this._useCases) : super(const AppState.initial());

  final List<Appointment> _appointment = [];
  List<Appointment> get appointment => _appointment;
  set setAppointment(Appointment x) => _appointment.add(x);

  int _currentPage = 1;

  Future getAppointments() async {
    _loading();
    final result = await _useCases.getAll(_currentPage + 1);
    _handleResult(result, _geted);
  }

  Future createAppointment(Appointment x) async {
    _loading();
    final result = await _useCases.create(x);
    _handleResult(result, _created);
  }

  Future cancelAppointment(Appointment x) async {
    _loading();
    final result = await _useCases.cancel(x);
    _handleResult(result, (deleted) {
      if (deleted) return _deleted(x);
      _error(ErrorHandler.handle(""));
    });
  }

  void _loading() => emit(const AppState.loading());

  void _geted(List<Appointment> x) {
    if (x.isNotEmpty) {
      appointment.addAll(x);
      _currentPage += 1;
    }

    emit(AppState.loaded(_appointment));
  }

  void _created(Appointment x) {
    _appointment.add(x);
    emit(AppState.loaded(_appointment));
  }

  void _deleted(Appointment x) {
    _appointment.remove(x);
    emit(AppState.loaded(_appointment));
  }

  void _error(ErrorHandler x) => emit(AppState.error(x.apiErrorModel.message ?? ''));

  void _handleResult<T>(ApiResult<T> result, void Function(T) sucess) =>
      result.when(sucess: sucess, failure: _error);
}
