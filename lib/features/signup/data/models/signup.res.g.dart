// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup.res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupResponse _$SignupResponseFromJson(Map<String, dynamic> json) =>
    SignupResponse(
      json['code'] as int?,
      json['status'] as bool?,
      json['message'] as String?,
      json['data'] == null
          ? null
          : _Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignupResponseToJson(SignupResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'code': instance.code,
    };

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
      token: json['token'] as String?,
      userName: json['username'] as String?,
    );

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
      'token': instance.token,
      'username': instance.userName,
    };
