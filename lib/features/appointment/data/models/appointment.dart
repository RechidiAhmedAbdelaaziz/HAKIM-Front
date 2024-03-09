import 'package:equatable/equatable.dart';
import 'package:front/features/auth/data/models/user.dart';
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
  final AuthModel? doctor;
  final AuthModel? patient;

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
