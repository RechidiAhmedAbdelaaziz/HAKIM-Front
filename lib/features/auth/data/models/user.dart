// ignore_for_file: library_private_types_in_public_api

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class AuthModel extends Equatable {
  const AuthModel({
    required this.patient,
    required this.id,
    this.phone,
    this.specialization,
    this.appointments,
    this.location,
    this.worktime,
    this.points,
    required this.name,
    required this.pic,
    required this.email,
    required this.kind,
    required this.isVerified,
    required this.posts,
  });

  final IPatientModel patient;

  @JsonKey(name: '_id')
  final String id;
  final String? phone;
  final String? specialization;
  final List<String>? appointments;
  final List<String>? location;
  final List<DateTime>? worktime;
  final int? points;
  final String name;
  final String pic;
  final String email;
  final String kind;
  final bool isVerified;
  final List<String> posts;

  factory AuthModel.fromJson(Map<String, dynamic> json) =>
      _$AuthModelFromJson(json);

  Map<String, dynamic> toJson() => _$AuthModelToJson(this);

  @override
  String toString() {
    return "$patient, $id, $phone, $specialization, $appointments, $location, $worktime, $points, $name, $pic, $email, $kind, $isVerified, $posts, ";
  }

  @override
  List<Object?> get props => [id];
}

@JsonSerializable()
class IPatientModel extends Equatable {
  const IPatientModel({
    required this.appointments,
  });

  final List<String> appointments;

  factory IPatientModel.fromJson(Map<String, dynamic> json) =>
      _$IPatientModelFromJson(json);

  Map<String, dynamic> toJson() => _$IPatientModelToJson(this);

  @override
  String toString() {
    return "$appointments, ";
  }

  @override
  List<Object?> get props => [
        appointments,
      ];
}
