import 'package:json_annotation/json_annotation.dart';

part 'login.req.g.dart';

@JsonSerializable()
class LoginRequest {
    @JsonKey(name: "login")
    String login;
    @JsonKey(name: "password")
    String password;

    LoginRequest({
        required this.login,
        required this.password,
    });


    Map<String, dynamic> toJson() => _$LoginRequestToJson(this);
}
