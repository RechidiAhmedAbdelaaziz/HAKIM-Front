import 'package:front/features/appointment/domain/entities/appointment.dart';
import 'package:front/features/auth/data/models/user.dart';
import 'package:front/features/auth/domain/enitities/user.dart';
import 'package:front/features/posts/domain/entites/post.dart';

import 'ipatient.dart';

class Doctor extends User {
  final String phone;
  final String specialization;
  final List<Appointment> appointments;
  final List<String> location;
  final List<DateTime> worktime;
  final int points;

  const Doctor(
      {required super.id,
      required super.name,
      required super.pic,
      required super.email,
      super.kind = "Doctor",
      required super.isVerified,
      required super.posts,
      required super.patient,
      required this.phone,
      required this.specialization,
      required this.appointments,
      required this.location,
      required this.worktime,
      this.points = 0});

  Doctor copyWith_({
    IPatient? patient,
    String? id,
    String? phone,
    String? specialization,
    List<Appointment>? appointments,
    List<String>? location,
    List<DateTime>? worktime,
    int? points,
    String? name,
    String? pic,
    String? email,
    String? password,
    String? kind,
    bool? isVerified,
    List<Post>? posts,
  }) {
    return Doctor(
      patient: patient ?? this.patient,
      id: id ?? this.id,
      phone: phone ?? this.phone,
      specialization: specialization ?? this.specialization,
      appointments: appointments ?? this.appointments,
      location: location ?? this.location,
      worktime: worktime ?? this.worktime,
      points: points ?? this.points,
      name: name ?? this.name,
      pic: pic ?? this.pic,
      email: email ?? this.email,
      kind: kind ?? this.kind,
      isVerified: isVerified ?? this.isVerified,
      posts: posts ?? this.posts,
    );
  }

  AuthModel toModel() => AuthModel(
        patient: patient.toModel(),
        id: id,
        phone: phone,
        specialization: specialization,
        appointments: appointments.map((e) => e.id).toList(),
        location: location,
        worktime: worktime,
        points: points,
        name: name,
        pic: pic,
        email: email,
        kind: kind,
        isVerified: isVerified,
        posts: posts.map((e) => e.id).toList(),
      );

  factory Doctor.fromModel(AuthModel model) => Doctor(
        id: model.id,
        name: model.name,
        pic: model.pic,
        email: model.email,
        isVerified: model.isVerified,
        posts: model.posts.map((e) => getPostById(e)).toList(),
        patient: IPatient.fromModel(model.patient),
        phone: model.phone!,
        specialization: model.specialization!,
        appointments:
            model.appointments!.map((e) => getAppointmentById(e)).toList(),
        location: model.location!, // TODO: Create location model
        worktime: model.worktime!,
      );
}

Doctor getDrById(String id) {
  return Doctor(
    id: id,
    name: '',
    pic: '',
    email: '',
    isVerified: true,
    posts: const [],
    patient: const IPatient(appointments: []),
    phone: '',
    specialization: '',
    appointments: const [],
    location: const [],
    worktime: const [],
    points: 432,
  );
}
