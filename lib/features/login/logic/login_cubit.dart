import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:front/features/login/data/models/login.req.dart';
import 'package:front/features/login/data/repository/login.repo.dart';
import 'package:front/features/login/logic/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepository _repo;
  LoginCubit(this._repo) : super(const LoginState.initial());

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  void login() async {
    emit(const LoginState.loading());
    final response = await _repo.login(LoginRequest(
      login: email.text,
      password: password.text,
    ));
    response.when(
      sucess: (data) {
        emit(LoginState.success(data));
      },
      failure: (error) {
        emit(LoginState.error(error.apiErrorModel.message ?? ""));
      },
    );
  }
}
