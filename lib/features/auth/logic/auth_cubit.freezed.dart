// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(User user) loggedin,
    required TResult Function(User user, bool? isPro) signedup,
    required TResult Function() loggedout,
    required TResult Function(ErrorHandler error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(User user)? loggedin,
    TResult? Function(User user, bool? isPro)? signedup,
    TResult? Function()? loggedout,
    TResult? Function(ErrorHandler error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(User user)? loggedin,
    TResult Function(User user, bool? isPro)? signedup,
    TResult Function()? loggedout,
    TResult Function(ErrorHandler error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loggined value) loggedin,
    required TResult Function(_SignedUp value) signedup,
    required TResult Function(_LoggedOut value) loggedout,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Loggined value)? loggedin,
    TResult? Function(_SignedUp value)? signedup,
    TResult? Function(_LoggedOut value)? loggedout,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loggined value)? loggedin,
    TResult Function(_SignedUp value)? signedup,
    TResult Function(_LoggedOut value)? loggedout,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(User user) loggedin,
    required TResult Function(User user, bool? isPro) signedup,
    required TResult Function() loggedout,
    required TResult Function(ErrorHandler error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(User user)? loggedin,
    TResult? Function(User user, bool? isPro)? signedup,
    TResult? Function()? loggedout,
    TResult? Function(ErrorHandler error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(User user)? loggedin,
    TResult Function(User user, bool? isPro)? signedup,
    TResult Function()? loggedout,
    TResult Function(ErrorHandler error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loggined value) loggedin,
    required TResult Function(_SignedUp value) signedup,
    required TResult Function(_LoggedOut value) loggedout,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Loggined value)? loggedin,
    TResult? Function(_SignedUp value)? signedup,
    TResult? Function(_LoggedOut value)? loggedout,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loggined value)? loggedin,
    TResult Function(_SignedUp value)? signedup,
    TResult Function(_LoggedOut value)? loggedout,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(User user) loggedin,
    required TResult Function(User user, bool? isPro) signedup,
    required TResult Function() loggedout,
    required TResult Function(ErrorHandler error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(User user)? loggedin,
    TResult? Function(User user, bool? isPro)? signedup,
    TResult? Function()? loggedout,
    TResult? Function(ErrorHandler error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(User user)? loggedin,
    TResult Function(User user, bool? isPro)? signedup,
    TResult Function()? loggedout,
    TResult Function(ErrorHandler error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loggined value) loggedin,
    required TResult Function(_SignedUp value) signedup,
    required TResult Function(_LoggedOut value) loggedout,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Loggined value)? loggedin,
    TResult? Function(_SignedUp value)? signedup,
    TResult? Function(_LoggedOut value)? loggedout,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loggined value)? loggedin,
    TResult Function(_SignedUp value)? signedup,
    TResult Function(_LoggedOut value)? loggedout,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl();

  @override
  String toString() {
    return 'AuthState.loaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(User user) loggedin,
    required TResult Function(User user, bool? isPro) signedup,
    required TResult Function() loggedout,
    required TResult Function(ErrorHandler error) error,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(User user)? loggedin,
    TResult? Function(User user, bool? isPro)? signedup,
    TResult? Function()? loggedout,
    TResult? Function(ErrorHandler error)? error,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(User user)? loggedin,
    TResult Function(User user, bool? isPro)? signedup,
    TResult Function()? loggedout,
    TResult Function(ErrorHandler error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loggined value) loggedin,
    required TResult Function(_SignedUp value) signedup,
    required TResult Function(_LoggedOut value) loggedout,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Loggined value)? loggedin,
    TResult? Function(_SignedUp value)? signedup,
    TResult? Function(_LoggedOut value)? loggedout,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loggined value)? loggedin,
    TResult Function(_SignedUp value)? signedup,
    TResult Function(_LoggedOut value)? loggedout,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements AuthState {
  const factory _Loaded() = _$LoadedImpl;
}

/// @nodoc
abstract class _$$LogginedImplCopyWith<$Res> {
  factory _$$LogginedImplCopyWith(
          _$LogginedImpl value, $Res Function(_$LogginedImpl) then) =
      __$$LogginedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$LogginedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LogginedImpl>
    implements _$$LogginedImplCopyWith<$Res> {
  __$$LogginedImplCopyWithImpl(
      _$LogginedImpl _value, $Res Function(_$LogginedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$LogginedImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$LogginedImpl implements _Loggined {
  const _$LogginedImpl(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthState.loggedin(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogginedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogginedImplCopyWith<_$LogginedImpl> get copyWith =>
      __$$LogginedImplCopyWithImpl<_$LogginedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(User user) loggedin,
    required TResult Function(User user, bool? isPro) signedup,
    required TResult Function() loggedout,
    required TResult Function(ErrorHandler error) error,
  }) {
    return loggedin(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(User user)? loggedin,
    TResult? Function(User user, bool? isPro)? signedup,
    TResult? Function()? loggedout,
    TResult? Function(ErrorHandler error)? error,
  }) {
    return loggedin?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(User user)? loggedin,
    TResult Function(User user, bool? isPro)? signedup,
    TResult Function()? loggedout,
    TResult Function(ErrorHandler error)? error,
    required TResult orElse(),
  }) {
    if (loggedin != null) {
      return loggedin(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loggined value) loggedin,
    required TResult Function(_SignedUp value) signedup,
    required TResult Function(_LoggedOut value) loggedout,
    required TResult Function(_Error value) error,
  }) {
    return loggedin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Loggined value)? loggedin,
    TResult? Function(_SignedUp value)? signedup,
    TResult? Function(_LoggedOut value)? loggedout,
    TResult? Function(_Error value)? error,
  }) {
    return loggedin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loggined value)? loggedin,
    TResult Function(_SignedUp value)? signedup,
    TResult Function(_LoggedOut value)? loggedout,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loggedin != null) {
      return loggedin(this);
    }
    return orElse();
  }
}

abstract class _Loggined implements AuthState {
  const factory _Loggined(final User user) = _$LogginedImpl;

  User get user;
  @JsonKey(ignore: true)
  _$$LogginedImplCopyWith<_$LogginedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignedUpImplCopyWith<$Res> {
  factory _$$SignedUpImplCopyWith(
          _$SignedUpImpl value, $Res Function(_$SignedUpImpl) then) =
      __$$SignedUpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user, bool? isPro});
}

/// @nodoc
class __$$SignedUpImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SignedUpImpl>
    implements _$$SignedUpImplCopyWith<$Res> {
  __$$SignedUpImplCopyWithImpl(
      _$SignedUpImpl _value, $Res Function(_$SignedUpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? isPro = freezed,
  }) {
    return _then(_$SignedUpImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      isPro: freezed == isPro
          ? _value.isPro
          : isPro // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$SignedUpImpl implements _SignedUp {
  const _$SignedUpImpl(this.user, {this.isPro});

  @override
  final User user;
  @override
  final bool? isPro;

  @override
  String toString() {
    return 'AuthState.signedup(user: $user, isPro: $isPro)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignedUpImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.isPro, isPro) || other.isPro == isPro));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, isPro);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignedUpImplCopyWith<_$SignedUpImpl> get copyWith =>
      __$$SignedUpImplCopyWithImpl<_$SignedUpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(User user) loggedin,
    required TResult Function(User user, bool? isPro) signedup,
    required TResult Function() loggedout,
    required TResult Function(ErrorHandler error) error,
  }) {
    return signedup(user, isPro);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(User user)? loggedin,
    TResult? Function(User user, bool? isPro)? signedup,
    TResult? Function()? loggedout,
    TResult? Function(ErrorHandler error)? error,
  }) {
    return signedup?.call(user, isPro);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(User user)? loggedin,
    TResult Function(User user, bool? isPro)? signedup,
    TResult Function()? loggedout,
    TResult Function(ErrorHandler error)? error,
    required TResult orElse(),
  }) {
    if (signedup != null) {
      return signedup(user, isPro);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loggined value) loggedin,
    required TResult Function(_SignedUp value) signedup,
    required TResult Function(_LoggedOut value) loggedout,
    required TResult Function(_Error value) error,
  }) {
    return signedup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Loggined value)? loggedin,
    TResult? Function(_SignedUp value)? signedup,
    TResult? Function(_LoggedOut value)? loggedout,
    TResult? Function(_Error value)? error,
  }) {
    return signedup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loggined value)? loggedin,
    TResult Function(_SignedUp value)? signedup,
    TResult Function(_LoggedOut value)? loggedout,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (signedup != null) {
      return signedup(this);
    }
    return orElse();
  }
}

abstract class _SignedUp implements AuthState {
  const factory _SignedUp(final User user, {final bool? isPro}) =
      _$SignedUpImpl;

  User get user;
  bool? get isPro;
  @JsonKey(ignore: true)
  _$$SignedUpImplCopyWith<_$SignedUpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoggedOutImplCopyWith<$Res> {
  factory _$$LoggedOutImplCopyWith(
          _$LoggedOutImpl value, $Res Function(_$LoggedOutImpl) then) =
      __$$LoggedOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoggedOutImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoggedOutImpl>
    implements _$$LoggedOutImplCopyWith<$Res> {
  __$$LoggedOutImplCopyWithImpl(
      _$LoggedOutImpl _value, $Res Function(_$LoggedOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoggedOutImpl implements _LoggedOut {
  const _$LoggedOutImpl();

  @override
  String toString() {
    return 'AuthState.loggedout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoggedOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(User user) loggedin,
    required TResult Function(User user, bool? isPro) signedup,
    required TResult Function() loggedout,
    required TResult Function(ErrorHandler error) error,
  }) {
    return loggedout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(User user)? loggedin,
    TResult? Function(User user, bool? isPro)? signedup,
    TResult? Function()? loggedout,
    TResult? Function(ErrorHandler error)? error,
  }) {
    return loggedout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(User user)? loggedin,
    TResult Function(User user, bool? isPro)? signedup,
    TResult Function()? loggedout,
    TResult Function(ErrorHandler error)? error,
    required TResult orElse(),
  }) {
    if (loggedout != null) {
      return loggedout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loggined value) loggedin,
    required TResult Function(_SignedUp value) signedup,
    required TResult Function(_LoggedOut value) loggedout,
    required TResult Function(_Error value) error,
  }) {
    return loggedout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Loggined value)? loggedin,
    TResult? Function(_SignedUp value)? signedup,
    TResult? Function(_LoggedOut value)? loggedout,
    TResult? Function(_Error value)? error,
  }) {
    return loggedout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loggined value)? loggedin,
    TResult Function(_SignedUp value)? signedup,
    TResult Function(_LoggedOut value)? loggedout,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loggedout != null) {
      return loggedout(this);
    }
    return orElse();
  }
}

abstract class _LoggedOut implements AuthState {
  const factory _LoggedOut() = _$LoggedOutImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorHandler error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorHandler,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.error);

  @override
  final ErrorHandler error;

  @override
  String toString() {
    return 'AuthState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(User user) loggedin,
    required TResult Function(User user, bool? isPro) signedup,
    required TResult Function() loggedout,
    required TResult Function(ErrorHandler error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(User user)? loggedin,
    TResult? Function(User user, bool? isPro)? signedup,
    TResult? Function()? loggedout,
    TResult? Function(ErrorHandler error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(User user)? loggedin,
    TResult Function(User user, bool? isPro)? signedup,
    TResult Function()? loggedout,
    TResult Function(ErrorHandler error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loggined value) loggedin,
    required TResult Function(_SignedUp value) signedup,
    required TResult Function(_LoggedOut value) loggedout,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Loggined value)? loggedin,
    TResult? Function(_SignedUp value)? signedup,
    TResult? Function(_LoggedOut value)? loggedout,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loggined value)? loggedin,
    TResult Function(_SignedUp value)? signedup,
    TResult Function(_LoggedOut value)? loggedout,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AuthState {
  const factory _Error(final ErrorHandler error) = _$ErrorImpl;

  ErrorHandler get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
