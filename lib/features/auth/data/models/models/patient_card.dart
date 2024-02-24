// ignore_for_file: library_private_types_in_public_api

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'patient_card.g.dart';

@JsonSerializable()
class PatientCard extends Equatable {
  const PatientCard({
    required this.diagnosis,
    required this.prescriptions,
    required this.notes,
  });

  @JsonKey(name: 'Diagnosis')
  final List<String>? diagnosis;

  @JsonKey(name: 'Prescriptions')
  final List<String>? prescriptions;

  @JsonKey(name: 'Notes')
  final List<String>? notes;

  factory PatientCard.fromJson(Map<String, dynamic> json) =>
      _$PatientCardFromJson(json);

  Map<String, dynamic> toJson() => _$PatientCardToJson(this);

  @override
  String toString() {
    return "$diagnosis, $prescriptions, $notes, ";
  }

  @override
  List<Object?> get props => [
        diagnosis,
        prescriptions,
        notes,
      ];
}
