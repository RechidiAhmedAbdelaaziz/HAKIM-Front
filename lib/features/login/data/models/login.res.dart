// ignore_for_file: library_private_types_in_public_api

import 'package:json_annotation/json_annotation.dart';

part 'login.res.g.dart';

@JsonSerializable()
class LoginResponse {
  bool? status;
  String? message;
  _Data? data;
  int? code;

  LoginResponse(this.code, this.status, this.message, this.data);

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@JsonSerializable()
class _Data {
  String? token;
  @JsonKey(name: "username")
  String? userName;

  _Data({this.token, this.userName});
  factory _Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
