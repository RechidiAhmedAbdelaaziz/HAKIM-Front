// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup.req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupRequestBody _$SignupRequestBodyFromJson(Map<String, dynamic> json) =>
    SignupRequestBody(
      password: json['password'] as String,
      email: json['email'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$SignupRequestBodyToJson(SignupRequestBody instance) =>
    <String, dynamic>{
      'password': instance.password,
      'email': instance.email,
      'name': instance.name,
    };


Map<String, dynamic> _$SignupRequestBodyDrToJson(
        SignupRequestBodyDr instance) =>
    <String, dynamic>{
      'password': instance.password,
      'email': instance.email,
      'name': instance.name,
      'locations': instance.locations,
      'phone': instance.phone,
      'specialization': instance.specialization,
    };
