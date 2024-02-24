import 'package:front/core/networking/res.model.dart';
import 'package:json_annotation/json_annotation.dart';

import '../models/user.dart';

part 'auth.res.g.dart';

@JsonSerializable()
class AuthResponse extends ResponseModel<AuthModel> {
  AuthResponse({
    super.status,
    super.token,
    super.message,
    super.data,
    super.code,
  });

  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);
}

@JsonSerializable()
class AuthListResponse extends ResponseModel<List<AuthModel>> {
  AuthListResponse(
      {super.status, super.pagination, super.message, super.data, super.code});

  factory AuthListResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthListResponseFromJson(json);
}
