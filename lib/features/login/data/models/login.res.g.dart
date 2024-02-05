// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      json['code'] as int?,
      json['status'] as bool?,
      json['message'] as String?,
      json['data'] == null
          ? null
          : _Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
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
