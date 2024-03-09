import 'package:bloc/bloc.dart';
import 'package:front/core/helpers/list.extenstion.dart';
import 'package:front/core/networking/api.result.dart';
import 'package:front/core/networking/error.handler.dart';

import 'app_state.dart';

class AppCubit<T> extends Cubit<AppState<T>> {
  AppCubit() : super(const AppState.initial());

  void emitLoading() => emit(const AppState.loading());
  void emitLoaded(T x) => emit(AppState.loaded(x));
  void emitDeleted(T x) => emit(AppState.deleted(x));
  void emitError(ErrorHandler x) =>
      emit(AppState.error(x.apiErrorModel.message ?? ''));

  Future<void> doThis<D, C>(
    Future<ApiResult<D>> Function(C) result,
    C x,
    void Function(D) sucess,
  ) async {
    emitLoading();
    final result_ = await result(x);
    result_.when(sucess: sucess, failure: emitError);
  }
}

abstract class ListCubit<T> extends AppCubit<List<T>> {
  @override
  void emitLoaded(List<T> x) => emit(AppState.loaded(x.unique()));

  Future<void> getList();
  Future<void> create(T x);
  Future<void> delete(T x);
}
