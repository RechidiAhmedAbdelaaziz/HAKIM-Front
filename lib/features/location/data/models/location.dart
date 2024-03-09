import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'location.g.dart';

@JsonSerializable()
class LocationModel extends Equatable {
  const LocationModel({
    required this.title,
    required this.longitude,
    required this.latitude,
    required this.id,
  });

  final String? title;
  final double? longitude;
  final double? latitude;

  @JsonKey(name: '_id')
  final String? id;

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);

  Map<String, dynamic> toJson() => _$LocationModelToJson(this);

  @override
  String toString() {
    return "$title, $longitude, $latitude, $id, ";
  }

  @override
  List<Object?> get props => [id];
}
