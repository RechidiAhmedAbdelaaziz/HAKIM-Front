
import 'package:json_annotation/json_annotation.dart';

part 'login.req.body.g.dart';

@JsonSerializable()
class LoginRequestBody {
  final String login;
  final String password;

  LoginRequestBody({required this.login, required this.password});

  Map<String, dynamic> toJson() => _$LoginRequestBodyToJson(this);
}
