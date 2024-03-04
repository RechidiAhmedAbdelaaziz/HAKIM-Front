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


_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
      token: json['token'] as String?,
      userName: json['username'] as String?,
    );

