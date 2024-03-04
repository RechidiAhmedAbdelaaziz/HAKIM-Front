// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'donation.res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DonationResponse _$DonationResponseFromJson(Map<String, dynamic> json) =>
    DonationResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : DonationModel.fromJson(json['data'] as Map<String, dynamic>),
      code: json['code'] as int?,
    );

Map<String, dynamic> _$DonationResponseToJson(DonationResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'code': instance.code,
    };

DonationListResponse _$DonationListResponseFromJson(
        Map<String, dynamic> json) =>
    DonationListResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DonationModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      code: json['code'] as int?,
    );

Map<String, dynamic> _$DonationListResponseToJson(
        DonationListResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'code': instance.code,
    };
