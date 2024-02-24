// ignore_for_file: library_private_types_in_public_api

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'location.g.dart';

@JsonSerializable()
class Location extends Equatable {
  const Location({
    required this.title,
    required this.longitude,
    required this.latitude,
  });

  final String? title;
  final double? longitude;
  final double? latitude;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);

  @override
  String toString() {
    return "$title, $longitude, $latitude, ";
  }

  @override
  List<Object?> get props => [
        title,
        longitude,
        latitude,
      ];
}
