import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'appointment.g.dart';

@JsonSerializable()
class AppointmentModel extends Equatable {
  const AppointmentModel({
    required this.id,
    required this.type,
    required this.date,
    required this.doctor,
    required this.patient,
  });

  @JsonKey(name: '_id')
  final String? id;
  final String? type;
  final DateTime? date;
  final String? doctor;
  final String? patient;

  factory AppointmentModel.fromJson(Map<String, dynamic> json) =>
      _$AppointmentModelFromJson(json);

  Map<String, dynamic> toJson() => _$AppointmentModelToJson(this);

  @override
  String toString() {
    return "$id, $type, $date, $doctor, $patient, ";
  }

  @override
  List<Object?> get props => [id];
}
