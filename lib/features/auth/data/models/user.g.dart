// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthModel _$AuthModelFromJson(Map<String, dynamic> json) => AuthModel(
      patient: IPatientModel.fromJson(json['patient'] as Map<String, dynamic>),
      id: json['_id'] as String,
      phone: json['phone'] as String?,
      specialization: json['specialization'] as String?,
      appointments: (json['appointments'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      location: (json['location'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      worktime: (json['worktime'] as List<dynamic>?)
          ?.map((e) => DateTime.parse(e as String))
          .toList(),
      points: json['points'] as int?,
      name: json['name'] as String,
      pic: json['pic'] as String,
      email: json['email'] as String,
      kind: json['kind'] as String,
      isVerified: json['isVerified'] as bool,
      posts: (json['posts'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$AuthModelToJson(AuthModel instance) => <String, dynamic>{
      'patient': instance.patient,
      '_id': instance.id,
      'phone': instance.phone,
      'specialization': instance.specialization,
      'appointments': instance.appointments,
      'location': instance.location,
      'worktime': instance.worktime?.map((e) => e.toIso8601String()).toList(),
      'points': instance.points,
      'name': instance.name,
      'pic': instance.pic,
      'email': instance.email,
      'kind': instance.kind,
      'isVerified': instance.isVerified,
      'posts': instance.posts,
    };

IPatientModel _$IPatientModelFromJson(Map<String, dynamic> json) =>
    IPatientModel(
      appointments: (json['appointments'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$IPatientModelToJson(IPatientModel instance) =>
    <String, dynamic>{
      'appointments': instance.appointments,
    };
