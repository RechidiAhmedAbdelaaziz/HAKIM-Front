// ignore_for_file: library_private_types_in_public_api

import 'package:json_annotation/json_annotation.dart';

part 'signup.res.g.dart';

@JsonSerializable()
class SignupResponse {
  bool? status;
  String? message;
  _Data? data;
  int? code;

  SignupResponse(this.code, this.status, this.message, this.data);

  factory SignupResponse.fromJson(Map<String, dynamic> json) =>
      _$SignupResponseFromJson(json);
}

@JsonSerializable()
class _Data {
  String? token;
  @JsonKey(name: "username")
  String? userName;

  _Data({this.token, this.userName});
  factory _Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
