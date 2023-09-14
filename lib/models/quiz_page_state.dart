import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz_practice/models/question.dart';
part 'quiz_page_state.freezed.dart';

@freezed
class QuizPageState with _$QuizPageState {
  const factory QuizPageState({
    @Default(1) final int index,
    required final Question currentQuestion,
    @Default(2) int lives,
    String? selectedAnswer,
  }) = _QuizPageState;
}
