import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_state.freezed.dart';

@freezed
class SignupState<T> with _$SignupState<T> {
  const factory SignupState.initial() = Initial;

  const factory SignupState.loading() = _Loading;
  const factory SignupState.success(T data) = _Success;
  const factory SignupState.error(String error) = _Error;
}
