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
  int get level => throw _privateConstructorUsedError;
  List<Question> get questionsList => throw _privateConstructorUsedError;
  Question? get currentQuestion => throw _privateConstructorUsedError;
  int? get currentQuestionIndex => throw _privateConstructorUsedError;

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
      {int level,
      List<Question> questionsList,
      Question? currentQuestion,
      int? currentQuestionIndex});
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
    Object? level = null,
    Object? questionsList = null,
    Object? currentQuestion = freezed,
    Object? currentQuestionIndex = freezed,
  }) {
    return _then(_value.copyWith(
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      questionsList: null == questionsList
          ? _value.questionsList
          : questionsList // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      currentQuestion: freezed == currentQuestion
          ? _value.currentQuestion
          : currentQuestion // ignore: cast_nullable_to_non_nullable
              as Question?,
      currentQuestionIndex: freezed == currentQuestionIndex
          ? _value.currentQuestionIndex
          : currentQuestionIndex // ignore: cast_nullable_to_non_nullable
              as int?,
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
      {int level,
      List<Question> questionsList,
      Question? currentQuestion,
      int? currentQuestionIndex});
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
    Object? level = null,
    Object? questionsList = null,
    Object? currentQuestion = freezed,
    Object? currentQuestionIndex = freezed,
  }) {
    return _then(_$_QuizPageState(
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      questionsList: null == questionsList
          ? _value._questionsList
          : questionsList // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      currentQuestion: freezed == currentQuestion
          ? _value.currentQuestion
          : currentQuestion // ignore: cast_nullable_to_non_nullable
              as Question?,
      currentQuestionIndex: freezed == currentQuestionIndex
          ? _value.currentQuestionIndex
          : currentQuestionIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_QuizPageState implements _QuizPageState {
  const _$_QuizPageState(
      {required this.level,
      required final List<Question> questionsList,
      this.currentQuestion,
      this.currentQuestionIndex})
      : _questionsList = questionsList;

  @override
  final int level;
  final List<Question> _questionsList;
  @override
  List<Question> get questionsList {
    if (_questionsList is EqualUnmodifiableListView) return _questionsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questionsList);
  }

  @override
  final Question? currentQuestion;
  @override
  final int? currentQuestionIndex;

  @override
  String toString() {
    return 'QuizPageState(level: $level, questionsList: $questionsList, currentQuestion: $currentQuestion, currentQuestionIndex: $currentQuestionIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuizPageState &&
            (identical(other.level, level) || other.level == level) &&
            const DeepCollectionEquality()
                .equals(other._questionsList, _questionsList) &&
            (identical(other.currentQuestion, currentQuestion) ||
                other.currentQuestion == currentQuestion) &&
            (identical(other.currentQuestionIndex, currentQuestionIndex) ||
                other.currentQuestionIndex == currentQuestionIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      level,
      const DeepCollectionEquality().hash(_questionsList),
      currentQuestion,
      currentQuestionIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuizPageStateCopyWith<_$_QuizPageState> get copyWith =>
      __$$_QuizPageStateCopyWithImpl<_$_QuizPageState>(this, _$identity);
}

abstract class _QuizPageState implements QuizPageState {
  const factory _QuizPageState(
      {required final int level,
      required final List<Question> questionsList,
      final Question? currentQuestion,
      final int? currentQuestionIndex}) = _$_QuizPageState;

  @override
  int get level;
  @override
  List<Question> get questionsList;
  @override
  Question? get currentQuestion;
  @override
  int? get currentQuestionIndex;
  @override
  @JsonKey(ignore: true)
  _$$_QuizPageStateCopyWith<_$_QuizPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
