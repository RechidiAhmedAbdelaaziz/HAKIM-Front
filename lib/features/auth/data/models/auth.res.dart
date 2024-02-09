import 'package:front/core/networking/res.model.dart';
import 'package:json_annotation/json_annotation.dart';

import 'user.dart';

part 'auth.res.g.dart';

@JsonSerializable()
class AuthResponse extends ResponseModel<AuthModel> {
  AuthResponse(
      {required super.status,
      required super.message,
      required super.data,
      required super.code});

  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);
  Map<String, dynamic> toJson() => _$AuthResponseToJson(this);
}

@JsonSerializable()
class AuthListResponse extends ResponseModel<List<AuthModel>> {
  AuthListResponse(
      {required super.status,
      required super.message,
      required super.data,
      required super.code});

  factory AuthListResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthListResponseFromJson(json);
  Map<String, dynamic> toJson() => _$AuthListResponseToJson(this);
}
