import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:front/core/helpers/routing.dart';
import 'package:front/core/networking/api.result.dart';
import 'package:front/core/networking/error.handler.dart';
import 'package:front/features/auth/domain/usecases/index.dart';
import 'package:front/routes/routes.dart';

import '../domain/enitities/user.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthUseCases _useCases;
  AuthCubit(this._useCases) : super(const AuthState.initial());

  bool showPassword = false;
  void changePasswordVisibility() {
    showPassword = !showPassword;
    _loaded();
  }

  //* @Login

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  Future<void> login() async {
    _loading();

    final result = await _useCases.login(LoginParams(
      login: email.text,
      password: password.text,
    ));

    _handleResult(result, _loggedIn);
  }

  bool rememberMe = true;

  void changeRememberMe() {
    _loading();
    rememberMe = !rememberMe;
    _loaded();
  }

  void goToSignup(BuildContext context) => context.offNamed(Routes.signup);

  //* @SignUp

  bool isPro = false;
  TextEditingController name = TextEditingController();
  TextEditingController cPassword = TextEditingController();

  void changeAccountType() {
    _loading();
    isPro = !isPro;
    _loaded();
  }

  Future<void> signUp() async {
    _loading();
    if (password.text != cPassword.text) {
      return _error(ErrorHandler.handle("Password does not match"));
    }
    final result = await _useCases.signup(SignUpParams(
      email: email.text,
      password: password.text,
      name: name.text,
    ));

    _handleResult(result, _signedUp);
  }

  void goToLogin(BuildContext context) => context.offNamed(Routes.login);

  //* @Helpers

  void _loading() => emit(const AuthState.loading());
  void _loaded() => emit(const AuthState.loaded());
  void _error(ErrorHandler error) {
    emit(AuthState.error(error));
  }

  void _loggedIn(User user) => emit(AuthState.loggedin(user));
  void _signedUp(User user) => emit(AuthState.signedup(user, isPro: isPro));

  void _handleResult<T>(ApiResult<T> result, void Function(T) sucess) =>
      result.when(sucess: sucess, failure: _error);
}
