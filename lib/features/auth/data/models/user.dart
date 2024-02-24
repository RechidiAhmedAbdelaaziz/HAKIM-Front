// ignore_for_file: library_private_types_in_public_api

import 'package:equatable/equatable.dart';
import 'package:front/features/auth/data/models/models/document.dart';
import 'package:front/features/auth/data/models/models/info.dart';
import 'package:front/features/auth/data/models/models/location.dart';
import 'package:front/features/auth/data/models/models/medical_record.dart';
import 'package:front/features/auth/data/models/models/patient_card.dart';
import 'package:front/features/auth/data/models/models/worktime.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class AuthModel extends Equatable {
  const AuthModel({
    required this.id,
    required this.name,
    required this.email,
    required this.info,
    required this.kind,
    required this.isVerified,
    required this.isOnline,
    required this.patientCard,
    required this.medicalRecord,
    required this.documents,
    this.phone,
    this.specialization,
    this.location,
    this.worktime,
    this.points,
    this.followers,
    this.hearts,
    this.rating,
  });

  @JsonKey(name: '_id')
  final String? id;
  final String? name;
  final String? email;
  final Info? info;
  final String? kind;
  final bool? isVerified;
  final bool? isOnline;
  final PatientCard? patientCard;
  final MedicalRecord? medicalRecord;
  final List<Document>? documents;
  final String? phone;
  final String? specialization;
  final List<Location>? location;
  final List<Worktime>? worktime;
  final int? points;
  final int? followers;
  final int? hearts;
  final double? rating;

  factory AuthModel.fromJson(Map<String, dynamic> json) =>
      _$AuthModelFromJson(json);

  Map<String, dynamic> toJson() => _$AuthModelToJson(this);

  @override
  String toString() {
    return "$name, $email, $info, $kind, $isVerified, $isOnline, $patientCard, $medicalRecord, $documents, $phone, $specialization, $location, $worktime, $points, $followers, $hearts, $rating, ";
  }

  @override
  List<Object?> get props => [id];
}
