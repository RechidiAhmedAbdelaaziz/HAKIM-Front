import 'package:equatable/equatable.dart';
import 'package:front/features/appointment/data/models/appointment.dart';
import 'package:front/features/auth/data/model/user.dart';

class Appointment extends Equatable {
  const Appointment({
    required this.id,
    required this.type,
    required this.date,
    required this.doctor,
    required this.patient,
  });

  final String id;
  final String type;
  final DateTime date;
  final Doctor doctor;
  final Patient patient;

  Appointment copyWith({
    String? type,
    DateTime? date,
  }) {
    return Appointment(
      id: id,
      type: type ?? this.type,
      date: date ?? this.date,
      doctor: doctor,
      patient: patient,
    );
  }

  factory Appointment.fromModel(AppointmentModel model) {
    return Appointment(
      id: model.id,
      type: model.type,
      date: model.date,
      doctor: getDrById(model.doctor),
      patient: getUserById(model.patient),
    );
  }

  AppointmentModel toModel() => AppointmentModel(
        id: id,
        type: type,
        date: date,
        doctor: doctor.id,
        patient: patient.id,
      );

  @override
  List<Object?> get props => [
        id,
        type,
        date,
        doctor,
        patient,
      ];
}
