// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuizPageState {
  int get index => throw _privateConstructorUsedError;
  Question get currentQuestion => throw _privateConstructorUsedError;
  int get lives => throw _privateConstructorUsedError;
  String? get selectedAnswer => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuizPageStateCopyWith<QuizPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizPageStateCopyWith<$Res> {
  factory $QuizPageStateCopyWith(
          QuizPageState value, $Res Function(QuizPageState) then) =
      _$QuizPageStateCopyWithImpl<$Res, QuizPageState>;
  @useResult
  $Res call(
      {int index, Question currentQuestion, int lives, String? selectedAnswer});
}

/// @nodoc
class _$QuizPageStateCopyWithImpl<$Res, $Val extends QuizPageState>
    implements $QuizPageStateCopyWith<$Res> {
  _$QuizPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? currentQuestion = null,
    Object? lives = null,
    Object? selectedAnswer = freezed,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      currentQuestion: null == currentQuestion
          ? _value.currentQuestion
          : currentQuestion // ignore: cast_nullable_to_non_nullable
              as Question,
      lives: null == lives
          ? _value.lives
          : lives // ignore: cast_nullable_to_non_nullable
              as int,
      selectedAnswer: freezed == selectedAnswer
          ? _value.selectedAnswer
          : selectedAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuizPageStateCopyWith<$Res>
    implements $QuizPageStateCopyWith<$Res> {
  factory _$$_QuizPageStateCopyWith(
          _$_QuizPageState value, $Res Function(_$_QuizPageState) then) =
      __$$_QuizPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int index, Question currentQuestion, int lives, String? selectedAnswer});
}

/// @nodoc
class __$$_QuizPageStateCopyWithImpl<$Res>
    extends _$QuizPageStateCopyWithImpl<$Res, _$_QuizPageState>
    implements _$$_QuizPageStateCopyWith<$Res> {
  __$$_QuizPageStateCopyWithImpl(
      _$_QuizPageState _value, $Res Function(_$_QuizPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? currentQuestion = null,
    Object? lives = null,
    Object? selectedAnswer = freezed,
  }) {
    return _then(_$_QuizPageState(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      currentQuestion: null == currentQuestion
          ? _value.currentQuestion
          : currentQuestion // ignore: cast_nullable_to_non_nullable
              as Question,
      lives: null == lives
          ? _value.lives
          : lives // ignore: cast_nullable_to_non_nullable
              as int,
      selectedAnswer: freezed == selectedAnswer
          ? _value.selectedAnswer
          : selectedAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_QuizPageState implements _QuizPageState {
  const _$_QuizPageState(
      {this.index = 1,
      required this.currentQuestion,
      this.lives = 2,
      this.selectedAnswer});

  @override
  @JsonKey()
  final int index;
  @override
  final Question currentQuestion;
  @override
  @JsonKey()
  final int lives;
  @override
  final String? selectedAnswer;

  @override
  String toString() {
    return 'QuizPageState(index: $index, currentQuestion: $currentQuestion, lives: $lives, selectedAnswer: $selectedAnswer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuizPageState &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.currentQuestion, currentQuestion) ||
                other.currentQuestion == currentQuestion) &&
            (identical(other.lives, lives) || other.lives == lives) &&
            (identical(other.selectedAnswer, selectedAnswer) ||
                other.selectedAnswer == selectedAnswer));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, index, currentQuestion, lives, selectedAnswer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuizPageStateCopyWith<_$_QuizPageState> get copyWith =>
      __$$_QuizPageStateCopyWithImpl<_$_QuizPageState>(this, _$identity);
}

abstract class _QuizPageState implements QuizPageState {
  const factory _QuizPageState(
      {final int index,
      required final Question currentQuestion,
      final int lives,
      final String? selectedAnswer}) = _$_QuizPageState;

  @override
  int get index;
  @override
  Question get currentQuestion;
  @override
  int get lives;
  @override
  String? get selectedAnswer;
  @override
  @JsonKey(ignore: true)
  _$$_QuizPageStateCopyWith<_$_QuizPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
