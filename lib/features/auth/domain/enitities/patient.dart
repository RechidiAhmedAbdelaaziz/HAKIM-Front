import 'package:front/features/auth/data/models/user.dart';

import '../../data/models/models/document.dart';
import '../../data/models/models/info.dart';
import '../../data/models/models/medical_record.dart';
import '../../data/models/models/patient_card.dart';
import 'user.dart';

class Patient extends User {
  const Patient({
    required super.id,
    required super.name,
    required super.email,
    required super.info,
    required super.kind,
    required super.isVerified,
    required super.isOnline,
    required super.patientCard,
    required super.medicalRecord,
    required super.documents,
  });

  @override
  AuthModel toModel() => AuthModel(
        id: id,
        name: name,
        email: email,
        info: info,
        kind: kind,
        isVerified: isVerified,
        isOnline: isOnline,
        patientCard: patientCard,
        medicalRecord: medicalRecord,
        documents: documents,
      );

  factory Patient.fromModel(AuthModel? model) => Patient(
        id: model?.id,
        name: model?.name,
        email: model?.email,
        info: model?.info,
        kind: model?.kind,
        isVerified: model?.isVerified,
        isOnline: model?.isOnline,
        patientCard: model?.patientCard,
        medicalRecord: model?.medicalRecord,
        documents: model?.documents,
      );

  @override
  Patient copyWith({
    String? id,
    String? name,
    String? email,
    Info? info,
    String? kind,
    bool? isVerified,
    bool? isOnline,
    PatientCard? patientCard,
    MedicalRecord? medicalRecord,
    List<Document>? documents,
  }) {
    return Patient(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      info: info ?? this.info,
      kind: kind ?? this.kind,
      isVerified: isVerified ?? this.isVerified,
      isOnline: isOnline ?? this.isOnline,
      patientCard: patientCard ?? this.patientCard,
      medicalRecord: medicalRecord ?? this.medicalRecord,
      documents: documents ?? this.documents,
    );
  }
}


// Patient getUserById(String id) {
//   return Patient(
//       id: id,
//       name: '',
//       pic: '',
//       email: '',
//       posts: const [],
//       isVerified: true,
//       patient: const IPatient(appointments: []));
// }
