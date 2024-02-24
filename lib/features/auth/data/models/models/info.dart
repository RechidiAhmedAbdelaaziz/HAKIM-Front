// ignore_for_file: library_private_types_in_public_api

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'info.g.dart';

@JsonSerializable()
class Info extends Equatable {
  const Info({
    required this.pic,
    required this.gender,
    required this.birthday,
    required this.age,
    required this.blood,
    required this.tall,
    required this.weight,
  });

  final String? pic;
  final String? gender;
  final DateTime? birthday;
  final int? age;
  final String? blood;
  final int? tall;
  final int? weight;

  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);

  Map<String, dynamic> toJson() => _$InfoToJson(this);

  @override
  String toString() {
    return "$pic, $gender, $birthday, $age, $blood, $tall, $weight, ";
  }

  @override
  List<Object?> get props => [
        pic,
        gender,
        birthday,
        age,
        blood,
        tall,
        weight,
      ];
}
