// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'donation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DonationModel _$DonationModelFromJson(Map<String, dynamic> json) =>
    DonationModel(
      id: json['_id'] as String?,
      need: json['need'] as String?,
      user: json['user'] == null
          ? null
          : AuthModel.fromJson(json['user'] as Map<String, dynamic>),
      phone: json['phone'] as String?,
      type: json['type'] as String?,
      isUrgent: json['isUrgent'] as bool?,
      location: json['location'] == null
          ? null
          : LocationModel.fromJson(json['location'] as Map<String, dynamic>),
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$DonationModelToJson(DonationModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'need': instance.need,
      'user': instance.user,
      'phone': instance.phone,
      'type': instance.type,
      'isUrgent': instance.isUrgent,
      'location': instance.location,
      'date': instance.date?.toIso8601String(),
    };
