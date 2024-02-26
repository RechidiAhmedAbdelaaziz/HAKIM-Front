import 'package:front/core/networking/res.model.dart';
import 'package:json_annotation/json_annotation.dart';

import '../models/appointment.dart';

part 'appointment.res.g.dart';

@JsonSerializable()
class AppointmentResponse extends ResponseModel<AppointmentModel> {
  AppointmentResponse(
      {required super.status,
      required super.message,
      required super.data,
      required super.code});

  factory AppointmentResponse.fromJson(Map<String, dynamic> json) =>
      _$AppointmentResponseFromJson(json);
  Map<String, dynamic> toJson() => _$AppointmentResponseToJson(this);
}

@JsonSerializable()
class AppointmentListResponse extends ResponseModel<List<AppointmentModel>> {
  AppointmentListResponse(
      {required super.status,
      required super.message,
      required super.data,
      required super.pagination,
      required super.code});

  factory AppointmentListResponse.fromJson(Map<String, dynamic> json) =>
      _$AppointmentListResponseFromJson(json);
  Map<String, dynamic> toJson() => _$AppointmentListResponseToJson(this);
}
