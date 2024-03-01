// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.process.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginAndSignUpModel _$LoginAndSignUpModelFromJson(Map<String, dynamic> json) =>
    LoginAndSignUpModel(
      login: json['login'] as String?,
      password: json['password'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$LoginAndSignUpModelToJson(
        LoginAndSignUpModel instance) =>
    <String, dynamic>{
      'login': instance.login,
      'password': instance.password,
      'name': instance.name,
    };
