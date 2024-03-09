// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T x) loaded,
    required TResult Function(T x) deleted,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T x)? loaded,
    TResult? Function(T x)? deleted,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T x)? loaded,
    TResult Function(T x)? deleted,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Loaded<T> value) loaded,
    required TResult Function(_Deleted<T> value) deleted,
    required TResult Function(_ErrorHandler<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Loaded<T> value)? loaded,
    TResult? Function(_Deleted<T> value)? deleted,
    TResult? Function(_ErrorHandler<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Loaded<T> value)? loaded,
    TResult Function(_Deleted<T> value)? deleted,
    TResult Function(_ErrorHandler<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<T, $Res> {
  factory $AppStateCopyWith(
          AppState<T> value, $Res Function(AppState<T>) then) =
      _$AppStateCopyWithImpl<T, $Res, AppState<T>>;
}

/// @nodoc
class _$AppStateCopyWithImpl<T, $Res, $Val extends AppState<T>>
    implements $AppStateCopyWith<T, $Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$AppStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AppState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T x) loaded,
    required TResult Function(T x) deleted,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T x)? loaded,
    TResult? Function(T x)? deleted,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T x)? loaded,
    TResult Function(T x)? deleted,
    TResult Function(String error)? error,
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
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Loaded<T> value) loaded,
    required TResult Function(_Deleted<T> value) deleted,
    required TResult Function(_ErrorHandler<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Loaded<T> value)? loaded,
    TResult? Function(_Deleted<T> value)? deleted,
    TResult? Function(_ErrorHandler<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Loaded<T> value)? loaded,
    TResult Function(_Deleted<T> value)? deleted,
    TResult Function(_ErrorHandler<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements AppState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<T, $Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl<T> value, $Res Function(_$LoadingImpl<T>) then) =
      __$$LoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<T, $Res>
    extends _$AppStateCopyWithImpl<T, $Res, _$LoadingImpl<T>>
    implements _$$LoadingImplCopyWith<T, $Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl<T> _value, $Res Function(_$LoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl<T> implements _Loading<T> {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AppState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T x) loaded,
    required TResult Function(T x) deleted,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T x)? loaded,
    TResult? Function(T x)? deleted,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T x)? loaded,
    TResult Function(T x)? deleted,
    TResult Function(String error)? error,
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
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Loaded<T> value) loaded,
    required TResult Function(_Deleted<T> value) deleted,
    required TResult Function(_ErrorHandler<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Loaded<T> value)? loaded,
    TResult? Function(_Deleted<T> value)? deleted,
    TResult? Function(_ErrorHandler<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Loaded<T> value)? loaded,
    TResult Function(_Deleted<T> value)? deleted,
    TResult Function(_ErrorHandler<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading<T> implements AppState<T> {
  const factory _Loading() = _$LoadingImpl<T>;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<T, $Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl<T> value, $Res Function(_$LoadedImpl<T>) then) =
      __$$LoadedImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T x});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<T, $Res>
    extends _$AppStateCopyWithImpl<T, $Res, _$LoadedImpl<T>>
    implements _$$LoadedImplCopyWith<T, $Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl<T> _value, $Res Function(_$LoadedImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = freezed,
  }) {
    return _then(_$LoadedImpl<T>(
      freezed == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$LoadedImpl<T> implements _Loaded<T> {
  const _$LoadedImpl(this.x);

  @override
  final T x;

  @override
  String toString() {
    return 'AppState<$T>.loaded(x: $x)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl<T> &&
            const DeepCollectionEquality().equals(other.x, x));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(x));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<T, _$LoadedImpl<T>> get copyWith =>
      __$$LoadedImplCopyWithImpl<T, _$LoadedImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T x) loaded,
    required TResult Function(T x) deleted,
    required TResult Function(String error) error,
  }) {
    return loaded(x);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T x)? loaded,
    TResult? Function(T x)? deleted,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(x);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T x)? loaded,
    TResult Function(T x)? deleted,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(x);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Loaded<T> value) loaded,
    required TResult Function(_Deleted<T> value) deleted,
    required TResult Function(_ErrorHandler<T> value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Loaded<T> value)? loaded,
    TResult? Function(_Deleted<T> value)? deleted,
    TResult? Function(_ErrorHandler<T> value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Loaded<T> value)? loaded,
    TResult Function(_Deleted<T> value)? deleted,
    TResult Function(_ErrorHandler<T> value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded<T> implements AppState<T> {
  const factory _Loaded(final T x) = _$LoadedImpl<T>;

  T get x;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<T, _$LoadedImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletedImplCopyWith<T, $Res> {
  factory _$$DeletedImplCopyWith(
          _$DeletedImpl<T> value, $Res Function(_$DeletedImpl<T>) then) =
      __$$DeletedImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T x});
}

/// @nodoc
class __$$DeletedImplCopyWithImpl<T, $Res>
    extends _$AppStateCopyWithImpl<T, $Res, _$DeletedImpl<T>>
    implements _$$DeletedImplCopyWith<T, $Res> {
  __$$DeletedImplCopyWithImpl(
      _$DeletedImpl<T> _value, $Res Function(_$DeletedImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = freezed,
  }) {
    return _then(_$DeletedImpl<T>(
      freezed == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$DeletedImpl<T> implements _Deleted<T> {
  const _$DeletedImpl(this.x);

  @override
  final T x;

  @override
  String toString() {
    return 'AppState<$T>.deleted(x: $x)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletedImpl<T> &&
            const DeepCollectionEquality().equals(other.x, x));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(x));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletedImplCopyWith<T, _$DeletedImpl<T>> get copyWith =>
      __$$DeletedImplCopyWithImpl<T, _$DeletedImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T x) loaded,
    required TResult Function(T x) deleted,
    required TResult Function(String error) error,
  }) {
    return deleted(x);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T x)? loaded,
    TResult? Function(T x)? deleted,
    TResult? Function(String error)? error,
  }) {
    return deleted?.call(x);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T x)? loaded,
    TResult Function(T x)? deleted,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(x);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Loaded<T> value) loaded,
    required TResult Function(_Deleted<T> value) deleted,
    required TResult Function(_ErrorHandler<T> value) error,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Loaded<T> value)? loaded,
    TResult? Function(_Deleted<T> value)? deleted,
    TResult? Function(_ErrorHandler<T> value)? error,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Loaded<T> value)? loaded,
    TResult Function(_Deleted<T> value)? deleted,
    TResult Function(_ErrorHandler<T> value)? error,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted<T> implements AppState<T> {
  const factory _Deleted(final T x) = _$DeletedImpl<T>;

  T get x;
  @JsonKey(ignore: true)
  _$$DeletedImplCopyWith<T, _$DeletedImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorHandlerImplCopyWith<T, $Res> {
  factory _$$ErrorHandlerImplCopyWith(_$ErrorHandlerImpl<T> value,
          $Res Function(_$ErrorHandlerImpl<T>) then) =
      __$$ErrorHandlerImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorHandlerImplCopyWithImpl<T, $Res>
    extends _$AppStateCopyWithImpl<T, $Res, _$ErrorHandlerImpl<T>>
    implements _$$ErrorHandlerImplCopyWith<T, $Res> {
  __$$ErrorHandlerImplCopyWithImpl(
      _$ErrorHandlerImpl<T> _value, $Res Function(_$ErrorHandlerImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorHandlerImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorHandlerImpl<T> implements _ErrorHandler<T> {
  const _$ErrorHandlerImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'AppState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorHandlerImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorHandlerImplCopyWith<T, _$ErrorHandlerImpl<T>> get copyWith =>
      __$$ErrorHandlerImplCopyWithImpl<T, _$ErrorHandlerImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T x) loaded,
    required TResult Function(T x) deleted,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T x)? loaded,
    TResult? Function(T x)? deleted,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T x)? loaded,
    TResult Function(T x)? deleted,
    TResult Function(String error)? error,
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
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Loaded<T> value) loaded,
    required TResult Function(_Deleted<T> value) deleted,
    required TResult Function(_ErrorHandler<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Loaded<T> value)? loaded,
    TResult? Function(_Deleted<T> value)? deleted,
    TResult? Function(_ErrorHandler<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Loaded<T> value)? loaded,
    TResult Function(_Deleted<T> value)? deleted,
    TResult Function(_ErrorHandler<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorHandler<T> implements AppState<T> {
  const factory _ErrorHandler(final String error) = _$ErrorHandlerImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorHandlerImplCopyWith<T, _$ErrorHandlerImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
