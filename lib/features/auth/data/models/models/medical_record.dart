// ignore_for_file: library_private_types_in_public_api

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'medical_record.g.dart';

@JsonSerializable()
class MedicalRecord extends Equatable {
  const MedicalRecord({
    required this.allergies,
    required this.chronicDiseases,
  });

  final List<String>? allergies;
  final List<String>? chronicDiseases;

  factory MedicalRecord.fromJson(Map<String, dynamic> json) =>
      _$MedicalRecordFromJson(json);

  Map<String, dynamic> toJson() => _$MedicalRecordToJson(this);

  @override
  String toString() {
    return "$allergies, $chronicDiseases, ";
  }

  @override
  List<Object?> get props => [
        allergies,
        chronicDiseases,
      ];
}
