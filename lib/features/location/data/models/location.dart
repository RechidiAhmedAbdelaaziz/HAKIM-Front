import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'location.g.dart';

@JsonSerializable()
class LocationModel extends Equatable {
  const LocationModel({
    required this.id,
    required this.title,
    required this.long,
    required this.lat,
  });

  final String id;
  final String title;
  final double long;
  final double lat;

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);

  Map<String, dynamic> toJson() => _$LocationModelToJson(this);

  @override
  String toString() {
    return "$id, $title, $long, $lat, ";
  }

  @override
  List<Object?> get props => [id];
}
