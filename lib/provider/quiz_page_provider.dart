import 'dart:developer';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quiz_practice/app/state/generic_state.dart';
import 'package:quiz_practice/constants/question_list.dart';
import 'package:quiz_practice/models/quiz_page_state.dart';

final quizPageProvider =
    StateNotifierProvider<QuizPageNotifier, GenericState<QuizPageState>>((ref) {
  return QuizPageNotifier();
});

class QuizPageNotifier extends StateNotifier<GenericState<QuizPageState>> {
  QuizPageNotifier()
      : super(
          const GenericState<QuizPageState>.initial(),
        );

  void loadQuizFirstTime() async {
    state = const GenericState<QuizPageState>.loading();

    final data = QuizPageState(
      index: 0,
      currentQuestion: level1QuestionList[0],
    );

    state = GenericState<QuizPageState>.success(data);
  }

  void selectAnswer(String selectedAnswer) {
    state.maybeWhen(
      success: (quizPageState) {
        final updatedState = quizPageState.copyWith(
          selectedAnswer: selectedAnswer,
        );
        state = GenericState<QuizPageState>.success(updatedState);
      },
      orElse: () {},
    );
  }

  void checkAnswer() {
    state.maybeWhen(
      success: (quizPageState) {
        final selectedAnswer = quizPageState.selectedAnswer;
        if (selectedAnswer == null) {
          final remainingLives = quizPageState.lives;
          if (remainingLives != 0) {
            final updatedState = quizPageState.copyWith(
              lives: remainingLives - 1,
            );
            state = GenericState<QuizPageState>.success(updatedState);
          }
          if (quizPageState.currentQuestion.index < 8 &&
              quizPageState.lives > 0) {
            Future.delayed(const Duration(milliseconds: 1700), () {
              loadNextQuestion();
            });
          } else {
            state = const GenericState<QuizPageState>.error("Game Over");
          }
        }
      },
      orElse: () {},
    );
  }

  void loadNextQuestion() {
    state.maybeWhen(
      success: (quizPageState) {
        final currentQuestionIndex = quizPageState.index;
        log(currentQuestionIndex.toString());

        if (currentQuestionIndex < 10) {
          final nextQuestionIndex = currentQuestionIndex + 1;
          final nextQuestion = level1QuestionList[nextQuestionIndex];
          final updatedState = quizPageState.copyWith(
            index: nextQuestionIndex,
            currentQuestion: nextQuestion,
          );
          state = GenericState<QuizPageState>.success(updatedState);
        }
      },
      orElse: () {},
    );
  }
}
