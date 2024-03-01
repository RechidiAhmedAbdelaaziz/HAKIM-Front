import 'package:equatable/equatable.dart';

import '../../data/models/models/document.dart';
import '../../data/models/models/info.dart';
import '../../data/models/models/medical_record.dart';
import '../../data/models/models/patient_card.dart';
import '../../data/models/user.dart';

abstract class User extends Equatable {
  const User(
      {required this.id,
      required this.name,
      required this.email,
      required this.info,
      required this.kind,
      required this.isVerified,
      required this.isOnline,
      required this.patientCard,
      required this.medicalRecord,
      required this.documents});

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

  AuthModel toModel();
  User copyWith();
  @override
  List<Object?> get props => [id];
}
