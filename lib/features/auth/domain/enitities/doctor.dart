import './user.dart';
import '../../data/models/models/document.dart';
import '../../data/models/models/info.dart';
import '../../data/models/models/location.dart';
import '../../data/models/models/medical_record.dart';
import '../../data/models/models/patient_card.dart';
import '../../data/models/models/worktime.dart';
import '../../data/models/user.dart';

class Doctor extends User {
  const Doctor(
      {required super.id,
      required super.name,
      required super.email,
      required super.info,
      required super.kind,
      required super.isVerified,
      required super.isOnline,
      required super.patientCard,
      required super.medicalRecord,
      required super.documents,
      required this.phone,
      required this.specialization,
      required this.location,
      required this.worktime,
      required this.points,
      required this.followers,
      required this.hearts,
      required this.rating});

  final String? phone;
  final String? specialization;
  final List<Location>? location;
  final List<Worktime>? worktime;
  final int? points;
  final int? followers;
  final int? hearts;
  final double? rating;

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
        phone: phone,
        specialization: specialization,
        location: location,
        worktime: worktime,
        points: points,
        followers: followers,
        hearts: hearts,
        rating: rating,
      );

  factory Doctor.fromModel(AuthModel? model) => Doctor(
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
        phone: model?.phone,
        specialization: model?.specialization,
        location: model?.location,
        worktime: model?.worktime,
        points: model?.points,
        followers: model?.followers,
        hearts: model?.hearts,
        rating: model?.rating,
      );

  @override
  Doctor copyWith({
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
    String? phone,
    String? specialization,
    List<Location>? location,
    List<Worktime>? worktime,
    int? points,
    int? followers,
    int? hearts,
    double? rating,
  }) {
    return Doctor(
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
      phone: phone ?? this.phone,
      specialization: specialization ?? this.specialization,
      location: location ?? this.location,
      worktime: worktime ?? this.worktime,
      points: points ?? this.points,
      followers: followers ?? this.followers,
      hearts: hearts ?? this.hearts,
      rating: rating ?? this.rating,
    );
  }
}

// Doctor getDrById(String id) {
//   return Doctor(
//     id: id,
//     name: '',
//     pic: '',
//     email: '',
//     isVerified: true,
//     posts: const [],
//     patient: const IPatient(appointments: []),
//     phone: '',
//     specialization: '',
//     appointments: const [],
//     location: const [],
//     worktime: const [],
//     points: 432,
//   );
// }
