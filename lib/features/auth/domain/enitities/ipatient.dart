import 'package:front/features/appointment/domain/entities/appointment.dart';
import 'package:front/features/auth/data/models/user.dart';

class IPatient {
  const IPatient({
    required this.appointments,
  });

  final List<Appointment> appointments;

  IPatient copyWith({
    List<Appointment>? appointments,
  }) {
    return IPatient(
      appointments: appointments ?? this.appointments,
    );
  }

  IPatientModel toModel() => IPatientModel(
        appointments: appointments.map((e) => e.id).toList(),
      );

  factory IPatient.fromModel(IPatientModel model) => IPatient(
        appointments:
            model.appointments.map((e) => getAppointmentById(e)).toList(),
      );
}
