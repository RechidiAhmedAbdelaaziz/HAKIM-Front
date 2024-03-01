// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppointmentModel _$AppointmentModelFromJson(Map<String, dynamic> json) =>
    AppointmentModel(
      id: json['_id'] as String?,
      type: json['type'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      doctor: json['doctor'] == null
          ? null
          : AuthModel.fromJson(json['doctor'] as Map<String, dynamic>),
      patient: json['patient'] == null
          ? null
          : AuthModel.fromJson(json['patient'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AppointmentModelToJson(AppointmentModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'type': instance.type,
      'date': instance.date?.toIso8601String(),
      'doctor': instance.doctor,
      'patient': instance.patient,
    };
