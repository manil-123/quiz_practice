// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'option_answer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OptionAnswerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() correct,
    required TResult Function() wrong,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? correct,
    TResult? Function()? wrong,
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? correct,
    TResult Function()? wrong,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OptionAnswerInitial value) initial,
    required TResult Function(_OptionAnswerCorrect value) correct,
    required TResult Function(_OptionAnswerWrong value) wrong,
    required TResult Function(_OptionAnswerEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OptionAnswerInitial value)? initial,
    TResult? Function(_OptionAnswerCorrect value)? correct,
    TResult? Function(_OptionAnswerWrong value)? wrong,
    TResult? Function(_OptionAnswerEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OptionAnswerInitial value)? initial,
    TResult Function(_OptionAnswerCorrect value)? correct,
    TResult Function(_OptionAnswerWrong value)? wrong,
    TResult Function(_OptionAnswerEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OptionAnswerStateCopyWith<$Res> {
  factory $OptionAnswerStateCopyWith(
          OptionAnswerState value, $Res Function(OptionAnswerState) then) =
      _$OptionAnswerStateCopyWithImpl<$Res, OptionAnswerState>;
}

/// @nodoc
class _$OptionAnswerStateCopyWithImpl<$Res, $Val extends OptionAnswerState>
    implements $OptionAnswerStateCopyWith<$Res> {
  _$OptionAnswerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_OptionAnswerInitialCopyWith<$Res> {
  factory _$$_OptionAnswerInitialCopyWith(_$_OptionAnswerInitial value,
          $Res Function(_$_OptionAnswerInitial) then) =
      __$$_OptionAnswerInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OptionAnswerInitialCopyWithImpl<$Res>
    extends _$OptionAnswerStateCopyWithImpl<$Res, _$_OptionAnswerInitial>
    implements _$$_OptionAnswerInitialCopyWith<$Res> {
  __$$_OptionAnswerInitialCopyWithImpl(_$_OptionAnswerInitial _value,
      $Res Function(_$_OptionAnswerInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OptionAnswerInitial implements _OptionAnswerInitial {
  const _$_OptionAnswerInitial();

  @override
  String toString() {
    return 'OptionAnswerState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OptionAnswerInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() correct,
    required TResult Function() wrong,
    required TResult Function() empty,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? correct,
    TResult? Function()? wrong,
    TResult? Function()? empty,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? correct,
    TResult Function()? wrong,
    TResult Function()? empty,
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
    required TResult Function(_OptionAnswerInitial value) initial,
    required TResult Function(_OptionAnswerCorrect value) correct,
    required TResult Function(_OptionAnswerWrong value) wrong,
    required TResult Function(_OptionAnswerEmpty value) empty,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OptionAnswerInitial value)? initial,
    TResult? Function(_OptionAnswerCorrect value)? correct,
    TResult? Function(_OptionAnswerWrong value)? wrong,
    TResult? Function(_OptionAnswerEmpty value)? empty,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OptionAnswerInitial value)? initial,
    TResult Function(_OptionAnswerCorrect value)? correct,
    TResult Function(_OptionAnswerWrong value)? wrong,
    TResult Function(_OptionAnswerEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _OptionAnswerInitial implements OptionAnswerState {
  const factory _OptionAnswerInitial() = _$_OptionAnswerInitial;
}

/// @nodoc
abstract class _$$_OptionAnswerCorrectCopyWith<$Res> {
  factory _$$_OptionAnswerCorrectCopyWith(_$_OptionAnswerCorrect value,
          $Res Function(_$_OptionAnswerCorrect) then) =
      __$$_OptionAnswerCorrectCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OptionAnswerCorrectCopyWithImpl<$Res>
    extends _$OptionAnswerStateCopyWithImpl<$Res, _$_OptionAnswerCorrect>
    implements _$$_OptionAnswerCorrectCopyWith<$Res> {
  __$$_OptionAnswerCorrectCopyWithImpl(_$_OptionAnswerCorrect _value,
      $Res Function(_$_OptionAnswerCorrect) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OptionAnswerCorrect implements _OptionAnswerCorrect {
  const _$_OptionAnswerCorrect();

  @override
  String toString() {
    return 'OptionAnswerState.correct()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OptionAnswerCorrect);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() correct,
    required TResult Function() wrong,
    required TResult Function() empty,
  }) {
    return correct();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? correct,
    TResult? Function()? wrong,
    TResult? Function()? empty,
  }) {
    return correct?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? correct,
    TResult Function()? wrong,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (correct != null) {
      return correct();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OptionAnswerInitial value) initial,
    required TResult Function(_OptionAnswerCorrect value) correct,
    required TResult Function(_OptionAnswerWrong value) wrong,
    required TResult Function(_OptionAnswerEmpty value) empty,
  }) {
    return correct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OptionAnswerInitial value)? initial,
    TResult? Function(_OptionAnswerCorrect value)? correct,
    TResult? Function(_OptionAnswerWrong value)? wrong,
    TResult? Function(_OptionAnswerEmpty value)? empty,
  }) {
    return correct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OptionAnswerInitial value)? initial,
    TResult Function(_OptionAnswerCorrect value)? correct,
    TResult Function(_OptionAnswerWrong value)? wrong,
    TResult Function(_OptionAnswerEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (correct != null) {
      return correct(this);
    }
    return orElse();
  }
}

abstract class _OptionAnswerCorrect implements OptionAnswerState {
  const factory _OptionAnswerCorrect() = _$_OptionAnswerCorrect;
}

/// @nodoc
abstract class _$$_OptionAnswerWrongCopyWith<$Res> {
  factory _$$_OptionAnswerWrongCopyWith(_$_OptionAnswerWrong value,
          $Res Function(_$_OptionAnswerWrong) then) =
      __$$_OptionAnswerWrongCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OptionAnswerWrongCopyWithImpl<$Res>
    extends _$OptionAnswerStateCopyWithImpl<$Res, _$_OptionAnswerWrong>
    implements _$$_OptionAnswerWrongCopyWith<$Res> {
  __$$_OptionAnswerWrongCopyWithImpl(
      _$_OptionAnswerWrong _value, $Res Function(_$_OptionAnswerWrong) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OptionAnswerWrong implements _OptionAnswerWrong {
  const _$_OptionAnswerWrong();

  @override
  String toString() {
    return 'OptionAnswerState.wrong()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OptionAnswerWrong);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() correct,
    required TResult Function() wrong,
    required TResult Function() empty,
  }) {
    return wrong();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? correct,
    TResult? Function()? wrong,
    TResult? Function()? empty,
  }) {
    return wrong?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? correct,
    TResult Function()? wrong,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (wrong != null) {
      return wrong();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OptionAnswerInitial value) initial,
    required TResult Function(_OptionAnswerCorrect value) correct,
    required TResult Function(_OptionAnswerWrong value) wrong,
    required TResult Function(_OptionAnswerEmpty value) empty,
  }) {
    return wrong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OptionAnswerInitial value)? initial,
    TResult? Function(_OptionAnswerCorrect value)? correct,
    TResult? Function(_OptionAnswerWrong value)? wrong,
    TResult? Function(_OptionAnswerEmpty value)? empty,
  }) {
    return wrong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OptionAnswerInitial value)? initial,
    TResult Function(_OptionAnswerCorrect value)? correct,
    TResult Function(_OptionAnswerWrong value)? wrong,
    TResult Function(_OptionAnswerEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (wrong != null) {
      return wrong(this);
    }
    return orElse();
  }
}

abstract class _OptionAnswerWrong implements OptionAnswerState {
  const factory _OptionAnswerWrong() = _$_OptionAnswerWrong;
}

/// @nodoc
abstract class _$$_OptionAnswerEmptyCopyWith<$Res> {
  factory _$$_OptionAnswerEmptyCopyWith(_$_OptionAnswerEmpty value,
          $Res Function(_$_OptionAnswerEmpty) then) =
      __$$_OptionAnswerEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OptionAnswerEmptyCopyWithImpl<$Res>
    extends _$OptionAnswerStateCopyWithImpl<$Res, _$_OptionAnswerEmpty>
    implements _$$_OptionAnswerEmptyCopyWith<$Res> {
  __$$_OptionAnswerEmptyCopyWithImpl(
      _$_OptionAnswerEmpty _value, $Res Function(_$_OptionAnswerEmpty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OptionAnswerEmpty implements _OptionAnswerEmpty {
  const _$_OptionAnswerEmpty();

  @override
  String toString() {
    return 'OptionAnswerState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OptionAnswerEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() correct,
    required TResult Function() wrong,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? correct,
    TResult? Function()? wrong,
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? correct,
    TResult Function()? wrong,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OptionAnswerInitial value) initial,
    required TResult Function(_OptionAnswerCorrect value) correct,
    required TResult Function(_OptionAnswerWrong value) wrong,
    required TResult Function(_OptionAnswerEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OptionAnswerInitial value)? initial,
    TResult? Function(_OptionAnswerCorrect value)? correct,
    TResult? Function(_OptionAnswerWrong value)? wrong,
    TResult? Function(_OptionAnswerEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OptionAnswerInitial value)? initial,
    TResult Function(_OptionAnswerCorrect value)? correct,
    TResult Function(_OptionAnswerWrong value)? wrong,
    TResult Function(_OptionAnswerEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _OptionAnswerEmpty implements OptionAnswerState {
  const factory _OptionAnswerEmpty() = _$_OptionAnswerEmpty;
}
