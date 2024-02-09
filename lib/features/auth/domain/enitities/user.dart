import 'package:equatable/equatable.dart';
import 'package:front/features/posts/domain/entites/post.dart';

import 'ipatient.dart';
// import 'doctor.dart';
// import 'patient.dart';

abstract class User extends Equatable {
  final String id;
  final String name;
  final String pic;
  final String email;
  final String kind;
  final bool isVerified;
  final List<Post> posts;
  final IPatient patient;

  const User({
    required this.id,
    required this.name,
    required this.pic,
    required this.email,
    required this.kind,
    required this.isVerified,
    required this.posts,
    required this.patient,
  });

  @override
  List<Object?> get props => [
        id,
      ];
}
