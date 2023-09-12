import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz_practice/models/question.dart';
part 'quiz_page_state.freezed.dart';

@freezed
class QuizPageState with _$QuizPageState {
  const factory QuizPageState({
    required final int level,
    required final List<Question> questionsList,
    final Question? currentQuestion,
    final int? currentQuestionIndex,
  }) = _QuizPageState;
}
