import 'package:front/features/appointment/domain/usecases/appointment.create.dart';

class AppointmentUseCases {
  final CreateAppointmentUseCase _create;

  AppointmentUseCases({required CreateAppointmentUseCase create}) : _create = create;
}
