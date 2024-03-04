import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:front/core/injection/dependency.dart';
import 'package:front/features/auth/domain/usecases/index.dart';
import 'package:front/features/login/logic/login_state.dart';
import 'package:front/features/posts/domain/usecases/index.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthUseCases _useCases;
  LoginCubit(this._useCases) : super(const LoginState.initial());

  TextEditingController email =
      TextEditingController(text: "rechididr@gmail.com");
  TextEditingController password = TextEditingController(text: "ahmed");

  void posts() async {
    emit(const LoginState.loading());
    final response = await locator<PostUseCases>().getAll(1);
    response.when(
      sucess: (data) {
        emit(LoginState.success(data[0]));
      },
      failure: (error) {
        emit(LoginState.error(error.apiErrorModel.message ?? ""));
      },
    );
  }

  void getProfile() async {
    emit(const LoginState.loading());
    final response = await _useCases.getMyProfile();
    response.when(
      sucess: (data) {
        emit(LoginState.success(data));
      },
      failure: (error) {
        emit(LoginState.error(error.apiErrorModel.message ?? ""));
      },
    );
  }

  void login() async {
    emit(const LoginState.loading());

    final response = await _useCases.login(LoginParams(
      login: "rechididr@gmail.com",
      password: "ahmed",
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
