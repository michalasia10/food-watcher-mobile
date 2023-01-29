// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_data_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GetDataStateTearOff {
  const _$GetDataStateTearOff();

  _Initial<T> initial<T>() {
    return _Initial<T>();
  }

  _InProgress<T> inProgress<T>() {
    return _InProgress<T>();
  }

  Success<T> success<T>(T data) {
    return Success<T>(
      data,
    );
  }

  _Failure<T> failure<T>(Failure failure) {
    return _Failure<T>(
      failure,
    );
  }
}

/// @nodoc
const $GetDataState = _$GetDataStateTearOff();

/// @nodoc
mixin _$GetDataState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(T data) success,
    required TResult Function(Failure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(T data)? success,
    TResult Function(Failure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(T data)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_InProgress<T> value) inProgress,
    required TResult Function(Success<T> value) success,
    required TResult Function(_Failure<T> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_InProgress<T> value)? inProgress,
    TResult Function(Success<T> value)? success,
    TResult Function(_Failure<T> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_InProgress<T> value)? inProgress,
    TResult Function(Success<T> value)? success,
    TResult Function(_Failure<T> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDataStateCopyWith<T, $Res> {
  factory $GetDataStateCopyWith(
          GetDataState<T> value, $Res Function(GetDataState<T>) then) =
      _$GetDataStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$GetDataStateCopyWithImpl<T, $Res>
    implements $GetDataStateCopyWith<T, $Res> {
  _$GetDataStateCopyWithImpl(this._value, this._then);

  final GetDataState<T> _value;
  // ignore: unused_field
  final $Res Function(GetDataState<T>) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<T, $Res> {
  factory _$InitialCopyWith(
          _Initial<T> value, $Res Function(_Initial<T>) then) =
      __$InitialCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<T, $Res>
    extends _$GetDataStateCopyWithImpl<T, $Res>
    implements _$InitialCopyWith<T, $Res> {
  __$InitialCopyWithImpl(_Initial<T> _value, $Res Function(_Initial<T>) _then)
      : super(_value, (v) => _then(v as _Initial<T>));

  @override
  _Initial<T> get _value => super._value as _Initial<T>;
}

/// @nodoc

class _$_Initial<T> implements _Initial<T> {
  const _$_Initial();

  @override
  String toString() {
    return 'GetDataState<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(T data) success,
    required TResult Function(Failure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(T data)? success,
    TResult Function(Failure failure)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(T data)? success,
    TResult Function(Failure failure)? failure,
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
    required TResult Function(_InProgress<T> value) inProgress,
    required TResult Function(Success<T> value) success,
    required TResult Function(_Failure<T> value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_InProgress<T> value)? inProgress,
    TResult Function(Success<T> value)? success,
    TResult Function(_Failure<T> value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_InProgress<T> value)? inProgress,
    TResult Function(Success<T> value)? success,
    TResult Function(_Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements GetDataState<T> {
  const factory _Initial() = _$_Initial<T>;
}

/// @nodoc
abstract class _$InProgressCopyWith<T, $Res> {
  factory _$InProgressCopyWith(
          _InProgress<T> value, $Res Function(_InProgress<T>) then) =
      __$InProgressCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$InProgressCopyWithImpl<T, $Res>
    extends _$GetDataStateCopyWithImpl<T, $Res>
    implements _$InProgressCopyWith<T, $Res> {
  __$InProgressCopyWithImpl(
      _InProgress<T> _value, $Res Function(_InProgress<T>) _then)
      : super(_value, (v) => _then(v as _InProgress<T>));

  @override
  _InProgress<T> get _value => super._value as _InProgress<T>;
}

/// @nodoc

class _$_InProgress<T> implements _InProgress<T> {
  const _$_InProgress();

  @override
  String toString() {
    return 'GetDataState<$T>.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _InProgress<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(T data) success,
    required TResult Function(Failure failure) failure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(T data)? success,
    TResult Function(Failure failure)? failure,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(T data)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_InProgress<T> value) inProgress,
    required TResult Function(Success<T> value) success,
    required TResult Function(_Failure<T> value) failure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_InProgress<T> value)? inProgress,
    TResult Function(Success<T> value)? success,
    TResult Function(_Failure<T> value)? failure,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_InProgress<T> value)? inProgress,
    TResult Function(Success<T> value)? success,
    TResult Function(_Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgress<T> implements GetDataState<T> {
  const factory _InProgress() = _$_InProgress<T>;
}

/// @nodoc
abstract class $SuccessCopyWith<T, $Res> {
  factory $SuccessCopyWith(Success<T> value, $Res Function(Success<T>) then) =
      _$SuccessCopyWithImpl<T, $Res>;
  $Res call({T data});
}

/// @nodoc
class _$SuccessCopyWithImpl<T, $Res> extends _$GetDataStateCopyWithImpl<T, $Res>
    implements $SuccessCopyWith<T, $Res> {
  _$SuccessCopyWithImpl(Success<T> _value, $Res Function(Success<T>) _then)
      : super(_value, (v) => _then(v as Success<T>));

  @override
  Success<T> get _value => super._value as Success<T>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(Success<T>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$Success<T> implements Success<T> {
  const _$Success(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'GetDataState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Success<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  $SuccessCopyWith<T, Success<T>> get copyWith =>
      _$SuccessCopyWithImpl<T, Success<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(T data) success,
    required TResult Function(Failure failure) failure,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(T data)? success,
    TResult Function(Failure failure)? failure,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(T data)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_InProgress<T> value) inProgress,
    required TResult Function(Success<T> value) success,
    required TResult Function(_Failure<T> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_InProgress<T> value)? inProgress,
    TResult Function(Success<T> value)? success,
    TResult Function(_Failure<T> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_InProgress<T> value)? inProgress,
    TResult Function(Success<T> value)? success,
    TResult Function(_Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success<T> implements GetDataState<T> {
  const factory Success(T data) = _$Success<T>;

  T get data;
  @JsonKey(ignore: true)
  $SuccessCopyWith<T, Success<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailureCopyWith<T, $Res> {
  factory _$FailureCopyWith(
          _Failure<T> value, $Res Function(_Failure<T>) then) =
      __$FailureCopyWithImpl<T, $Res>;
  $Res call({Failure failure});
}

/// @nodoc
class __$FailureCopyWithImpl<T, $Res>
    extends _$GetDataStateCopyWithImpl<T, $Res>
    implements _$FailureCopyWith<T, $Res> {
  __$FailureCopyWithImpl(_Failure<T> _value, $Res Function(_Failure<T>) _then)
      : super(_value, (v) => _then(v as _Failure<T>));

  @override
  _Failure<T> get _value => super._value as _Failure<T>;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_Failure<T>(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$_Failure<T> implements _Failure<T> {
  const _$_Failure(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'GetDataState<$T>.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Failure<T> &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$FailureCopyWith<T, _Failure<T>> get copyWith =>
      __$FailureCopyWithImpl<T, _Failure<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(T data) success,
    required TResult Function(Failure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(T data)? success,
    TResult Function(Failure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(T data)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_InProgress<T> value) inProgress,
    required TResult Function(Success<T> value) success,
    required TResult Function(_Failure<T> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_InProgress<T> value)? inProgress,
    TResult Function(Success<T> value)? success,
    TResult Function(_Failure<T> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_InProgress<T> value)? inProgress,
    TResult Function(Success<T> value)? success,
    TResult Function(_Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure<T> implements GetDataState<T> {
  const factory _Failure(Failure failure) = _$_Failure<T>;

  Failure get failure;
  @JsonKey(ignore: true)
  _$FailureCopyWith<T, _Failure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
