// ignoreforfile: unusedfield
export 'appointemtn.getall.dart';
export 'appointment.cancel.dart';
export 'appointment.create.dart';
export 'appointment.getbyid.dart';
export 'appointment.reschedule.dart';
import 'appointemtn.getall.dart';
import 'appointment.cancel.dart';
import 'appointment.create.dart';
import 'appointment.getbyid.dart';
import 'appointment.reschedule.dart';

class AppointmentUseCases {
  AppointmentUseCases(
      {required this.create,
      required this.getOne,
      required this.getAll,
      required this.cancel,
      required this.resched});

  final CreateAppointmentUseCase create;
  final GetOneAppointmentUseCase getOne;
  final GetAllAppointmentUseCase getAll;
  final CancelAppointmentUseCase cancel;
  final RescheduleAppointmentUseCase resched;
}
