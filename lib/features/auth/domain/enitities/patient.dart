import 'package:front/features/auth/data/models/user.dart';
import 'package:front/features/posts/domain/entites/post.dart';

import 'ipatient.dart';
import 'user.dart';

class Patient extends User {
  const Patient(
      {required super.id,
      required super.name,
      required super.pic,
      required super.email,
      super.kind = "Patient",
      required super.isVerified,
      required super.posts,
      required super.patient});

  Patient copyWith({
    IPatient? info,
    String? id,
    String? name,
    String? pic,
    String? email,
    String? password,
    String? kind,
    bool? isVerified,
    List<Post>? posts,
  }) {
    return Patient(
      patient: info ?? patient,
      id: id ?? this.id,
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
        name: name,
        pic: pic,
        email: email,
        kind: kind,
        isVerified: isVerified,
        posts: posts.map((e) => e.id).toList(),
      );
  factory Patient.fromModel(AuthModel model) => Patient(
        id: model.id,
        name: model.name,
        pic: model.pic,
        email: model.email,
        isVerified: model.isVerified,
        posts: model.posts.map((e) => getPostById(e)).toList(),
        patient: IPatient.fromModel(model.patient),
      );
}

Patient getUserById(String id) {
  return Patient(
      id: id,
      name: '',
      pic: '',
      email: '',
      posts: const [],
      isVerified: true,
      patient: const IPatient(appointments: []));
}
