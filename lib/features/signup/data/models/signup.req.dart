import 'package:json_annotation/json_annotation.dart';

part 'signup.req.g.dart';

@JsonSerializable()
class SignupRequestBody {
  final String password;
  final String email;
  final String name;

  SignupRequestBody({
    required this.password,
    required this.email,
    required this.name,
  });

  Map<String, dynamic> toJson() => _$SignupRequestBodyToJson(this);
}

@JsonSerializable()
class SignupRequestBodyDr extends SignupRequestBody {
  final List<String>? locations;
  final String? phone;
  final String? specialization;

  SignupRequestBodyDr({
    this.locations,
    this.phone,
    this.specialization,
    required super.password,
    required super.email,
    required super.name,
  });

  @override
  Map<String, dynamic> toJson() => _$SignupRequestBodyDrToJson(this);
}
