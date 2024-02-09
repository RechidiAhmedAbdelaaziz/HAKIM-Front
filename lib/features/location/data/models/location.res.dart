import 'package:front/core/networking/res.model.dart';
import 'package:json_annotation/json_annotation.dart';

import 'location.dart';

part 'location.res.g.dart';

@JsonSerializable()
class LocationResponse extends ResponseModel<LocationModel> {
  LocationResponse(
      {required super.status,
      required super.message,
      required super.data,
      required super.code});

  factory LocationResponse.fromJson(Map<String, dynamic> json) =>
      _$LocationResponseFromJson(json);
  Map<String, dynamic> toJson() => _$LocationResponseToJson(this);
}

@JsonSerializable()
class LocationListResponse extends ResponseModel<List<LocationModel>> {
  LocationListResponse(
      {required super.status,
      required super.message,
      required super.data,
      required super.code});

  factory LocationListResponse.fromJson(Map<String, dynamic> json) =>
      _$LocationListResponseFromJson(json);
  Map<String, dynamic> toJson() => _$LocationListResponseToJson(this);
}
