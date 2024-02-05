import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:front/features/signup/data/models/signup.req.dart';
import 'package:front/features/signup/data/repo/signup.repo.dart';
import 'package:front/features/signup/logic/signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignupRepository _repo;
  SignupCubit(this._repo) : super(const SignupState.initial());

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController name = TextEditingController();

  void signup() async {
    emit(const SignupState.loading());
    final response = await _repo.signup(SignupRequestBody(
      email: email.text,
      password: password.text,
      name: name.text,
    ));
    response.when(
      sucess: (data) {
        emit(SignupState.success(data));
      },
      failure: (error) {
        emit(SignupState.error(error.apiErrorModel.message ?? ""));
      },
    );
  }

  TextEditingController specialization = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController location = TextEditingController();

  void signupDr() async {
    emit(const SignupState.loading());
    final response = await _repo.signupDr(SignupRequestBodyDr(
      email: email.text,
      password: password.text,
      name: name.text,
      locations: [location.text],
      phone: phone.text,
      specialization: specialization.text,
    ));
    response.when(
      sucess: (data) {
        emit(SignupState.success(data));
      },
      failure: (error) {
        emit(SignupState.error(error.apiErrorModel.message ?? ""));
      },
    );
  }
}
