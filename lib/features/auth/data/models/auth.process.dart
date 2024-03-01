import 'package:json_annotation/json_annotation.dart';

part 'auth.process.g.dart';

@JsonSerializable()
class LoginAndSignUpModel {
  LoginAndSignUpModel({required this.login, required this.password, this.name});

  final String? login;
  final String? password;
  final String? name;

  factory LoginAndSignUpModel.fromJson(Map<String, dynamic> json) =>
      _$LoginAndSignUpModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginAndSignUpModelToJson(this);

  @override
  String toString() {
    return "$login, $password, ";
  }
}
