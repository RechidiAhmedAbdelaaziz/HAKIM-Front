import 'package:json_annotation/json_annotation.dart';

part 'login.res.g.dart';

@JsonSerializable()
class LoginResponse {
    @JsonKey(name: "status")
    bool status;
    @JsonKey(name: "message")
    String message;
    @JsonKey(name: "data")
    Data data;
    @JsonKey(name: "code")
    int code;

    LoginResponse({
        required this.status,
        required this.message,
        required this.data,
        required this.code,
    });

    factory LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);

}

@JsonSerializable()
class Data {
    @JsonKey(name: "token")
    String token;

    Data({
        required this.token,
    });

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
