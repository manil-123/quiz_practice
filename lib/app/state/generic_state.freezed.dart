// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generic_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GenericState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GenericSuccess<T> value) success,
    required TResult Function(_GenericInitial<T> value) initial,
    required TResult Function(_GenericError<T> value) error,
    required TResult Function(GenericLoading<T> value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenericSuccess<T> value)? success,
    TResult? Function(_GenericInitial<T> value)? initial,
    TResult? Function(_GenericError<T> value)? error,
    TResult? Function(GenericLoading<T> value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenericSuccess<T> value)? success,
    TResult Function(_GenericInitial<T> value)? initial,
    TResult Function(_GenericError<T> value)? error,
    TResult Function(GenericLoading<T> value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenericStateCopyWith<T, $Res> {
  factory $GenericStateCopyWith(
          GenericState<T> value, $Res Function(GenericState<T>) then) =
      _$GenericStateCopyWithImpl<T, $Res, GenericState<T>>;
}

/// @nodoc
class _$GenericStateCopyWithImpl<T, $Res, $Val extends GenericState<T>>
    implements $GenericStateCopyWith<T, $Res> {
  _$GenericStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GenericSuccessCopyWith<T, $Res> {
  factory _$$GenericSuccessCopyWith(
          _$GenericSuccess<T> value, $Res Function(_$GenericSuccess<T>) then) =
      __$$GenericSuccessCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$GenericSuccessCopyWithImpl<T, $Res>
    extends _$GenericStateCopyWithImpl<T, $Res, _$GenericSuccess<T>>
    implements _$$GenericSuccessCopyWith<T, $Res> {
  __$$GenericSuccessCopyWithImpl(
      _$GenericSuccess<T> _value, $Res Function(_$GenericSuccess<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GenericSuccess<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$GenericSuccess<T> implements GenericSuccess<T> {
  const _$GenericSuccess(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'GenericState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenericSuccess<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenericSuccessCopyWith<T, _$GenericSuccess<T>> get copyWith =>
      __$$GenericSuccessCopyWithImpl<T, _$GenericSuccess<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function() loading,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function()? loading,
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
    required TResult Function(GenericSuccess<T> value) success,
    required TResult Function(_GenericInitial<T> value) initial,
    required TResult Function(_GenericError<T> value) error,
    required TResult Function(GenericLoading<T> value) loading,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenericSuccess<T> value)? success,
    TResult? Function(_GenericInitial<T> value)? initial,
    TResult? Function(_GenericError<T> value)? error,
    TResult? Function(GenericLoading<T> value)? loading,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenericSuccess<T> value)? success,
    TResult Function(_GenericInitial<T> value)? initial,
    TResult Function(_GenericError<T> value)? error,
    TResult Function(GenericLoading<T> value)? loading,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class GenericSuccess<T> implements GenericState<T> {
  const factory GenericSuccess(final T data) = _$GenericSuccess<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$GenericSuccessCopyWith<T, _$GenericSuccess<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GenericInitialCopyWith<T, $Res> {
  factory _$$_GenericInitialCopyWith(_$_GenericInitial<T> value,
          $Res Function(_$_GenericInitial<T>) then) =
      __$$_GenericInitialCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_GenericInitialCopyWithImpl<T, $Res>
    extends _$GenericStateCopyWithImpl<T, $Res, _$_GenericInitial<T>>
    implements _$$_GenericInitialCopyWith<T, $Res> {
  __$$_GenericInitialCopyWithImpl(
      _$_GenericInitial<T> _value, $Res Function(_$_GenericInitial<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GenericInitial<T> implements _GenericInitial<T> {
  const _$_GenericInitial();

  @override
  String toString() {
    return 'GenericState<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GenericInitial<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function() loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function()? loading,
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
    required TResult Function(GenericSuccess<T> value) success,
    required TResult Function(_GenericInitial<T> value) initial,
    required TResult Function(_GenericError<T> value) error,
    required TResult Function(GenericLoading<T> value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenericSuccess<T> value)? success,
    TResult? Function(_GenericInitial<T> value)? initial,
    TResult? Function(_GenericError<T> value)? error,
    TResult? Function(GenericLoading<T> value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenericSuccess<T> value)? success,
    TResult Function(_GenericInitial<T> value)? initial,
    TResult Function(_GenericError<T> value)? error,
    TResult Function(GenericLoading<T> value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _GenericInitial<T> implements GenericState<T> {
  const factory _GenericInitial() = _$_GenericInitial<T>;
}

/// @nodoc
abstract class _$$_GenericErrorCopyWith<T, $Res> {
  factory _$$_GenericErrorCopyWith(
          _$_GenericError<T> value, $Res Function(_$_GenericError<T>) then) =
      __$$_GenericErrorCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_GenericErrorCopyWithImpl<T, $Res>
    extends _$GenericStateCopyWithImpl<T, $Res, _$_GenericError<T>>
    implements _$$_GenericErrorCopyWith<T, $Res> {
  __$$_GenericErrorCopyWithImpl(
      _$_GenericError<T> _value, $Res Function(_$_GenericError<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_GenericError<T>(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GenericError<T> implements _GenericError<T> {
  const _$_GenericError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'GenericState<$T>.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GenericError<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GenericErrorCopyWith<T, _$_GenericError<T>> get copyWith =>
      __$$_GenericErrorCopyWithImpl<T, _$_GenericError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function() loading,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GenericSuccess<T> value) success,
    required TResult Function(_GenericInitial<T> value) initial,
    required TResult Function(_GenericError<T> value) error,
    required TResult Function(GenericLoading<T> value) loading,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenericSuccess<T> value)? success,
    TResult? Function(_GenericInitial<T> value)? initial,
    TResult? Function(_GenericError<T> value)? error,
    TResult? Function(GenericLoading<T> value)? loading,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenericSuccess<T> value)? success,
    TResult Function(_GenericInitial<T> value)? initial,
    TResult Function(_GenericError<T> value)? error,
    TResult Function(GenericLoading<T> value)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _GenericError<T> implements GenericState<T> {
  const factory _GenericError(final String message) = _$_GenericError<T>;

  String get message;
  @JsonKey(ignore: true)
  _$$_GenericErrorCopyWith<T, _$_GenericError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GenericLoadingCopyWith<T, $Res> {
  factory _$$GenericLoadingCopyWith(
          _$GenericLoading<T> value, $Res Function(_$GenericLoading<T>) then) =
      __$$GenericLoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$GenericLoadingCopyWithImpl<T, $Res>
    extends _$GenericStateCopyWithImpl<T, $Res, _$GenericLoading<T>>
    implements _$$GenericLoadingCopyWith<T, $Res> {
  __$$GenericLoadingCopyWithImpl(
      _$GenericLoading<T> _value, $Res Function(_$GenericLoading<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GenericLoading<T> implements GenericLoading<T> {
  const _$GenericLoading();

  @override
  String toString() {
    return 'GenericState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GenericLoading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function()? loading,
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
    required TResult Function(GenericSuccess<T> value) success,
    required TResult Function(_GenericInitial<T> value) initial,
    required TResult Function(_GenericError<T> value) error,
    required TResult Function(GenericLoading<T> value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenericSuccess<T> value)? success,
    TResult? Function(_GenericInitial<T> value)? initial,
    TResult? Function(_GenericError<T> value)? error,
    TResult? Function(GenericLoading<T> value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenericSuccess<T> value)? success,
    TResult Function(_GenericInitial<T> value)? initial,
    TResult Function(_GenericError<T> value)? error,
    TResult Function(GenericLoading<T> value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GenericLoading<T> implements GenericState<T> {
  const factory GenericLoading() = _$GenericLoading<T>;
}
