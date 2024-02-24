// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthModel _$AuthModelFromJson(Map<String, dynamic> json) => AuthModel(
      id: json['_id'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      info: json['info'] == null
          ? null
          : Info.fromJson(json['info'] as Map<String, dynamic>),
      kind: json['kind'] as String?,
      isVerified: json['isVerified'] as bool?,
      isOnline: json['isOnline'] as bool?,
      patientCard: json['patientCard'] == null
          ? null
          : PatientCard.fromJson(json['patientCard'] as Map<String, dynamic>),
      medicalRecord: json['medicalRecord'] == null
          ? null
          : MedicalRecord.fromJson(
              json['medicalRecord'] as Map<String, dynamic>),
      documents: (json['documents'] as List<dynamic>?)
          ?.map((e) => Document.fromJson(e as Map<String, dynamic>))
          .toList(),
      phone: json['phone'] as String?,
      specialization: json['specialization'] as String?,
      location: (json['location'] as List<dynamic>?)
          ?.map((e) => Location.fromJson(e as Map<String, dynamic>))
          .toList(),
      worktime: (json['worktime'] as List<dynamic>?)
          ?.map((e) => Worktime.fromJson(e as Map<String, dynamic>))
          .toList(),
      points: json['points'] as int?,
      followers: json['followers'] as int?,
      hearts: json['hearts'] as int?,
      rating: (json['rating'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$AuthModelToJson(AuthModel instance) => <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'info': instance.info,
      'kind': instance.kind,
      'isVerified': instance.isVerified,
      'isOnline': instance.isOnline,
      'patientCard': instance.patientCard,
      'medicalRecord': instance.medicalRecord,
      'documents': instance.documents,
      'phone': instance.phone,
      'specialization': instance.specialization,
      'location': instance.location,
      'worktime': instance.worktime,
      'points': instance.points,
      'followers': instance.followers,
      'hearts': instance.hearts,
      'rating': instance.rating,
    };
