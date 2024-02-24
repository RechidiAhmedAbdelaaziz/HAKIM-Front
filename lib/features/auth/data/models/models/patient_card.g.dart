// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatientCard _$PatientCardFromJson(Map<String, dynamic> json) => PatientCard(
      diagnosis: (json['Diagnosis'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      prescriptions: (json['Prescriptions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      notes:
          (json['Notes'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$PatientCardToJson(PatientCard instance) =>
    <String, dynamic>{
      'Diagnosis': instance.diagnosis,
      'Prescriptions': instance.prescriptions,
      'Notes': instance.notes,
    };
