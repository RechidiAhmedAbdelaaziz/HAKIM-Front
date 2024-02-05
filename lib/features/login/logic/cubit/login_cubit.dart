import 'package:bloc/bloc.dart';
import 'package:front/features/login/data/models/login.req.body.dart';
import 'package:front/features/login/data/repository/login.repo.dart';
import 'package:front/features/login/logic/cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepository _repo;
  LoginCubit(this._repo) : super(const LoginState.initial());

  void login(LoginRequestBody info) async {
    emit(const LoginState.loading());
    final response = await _repo.login(info);
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
