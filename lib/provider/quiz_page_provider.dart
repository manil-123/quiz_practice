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

    // Get the question list of 10 questions and load the first  question at 0 index.
    final data = QuizPageState(
      index: 0,
      currentQuestion: level1QuestionList[0],
    );

    state = GenericState<QuizPageState>.success(data);
  }

  void selectAnswer(String selectedAnswer) {
    state.maybeWhen(
      success: (quizPageState) {
        // Update the selected answer as it is null at first.
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
        // When user does not select any answer
        if (selectedAnswer == null) {
          final remainingLives = quizPageState.lives;
          // Check if the remaining lives is not zero.
          if (remainingLives != 0) {
            final updatedState = quizPageState.copyWith(
              lives: remainingLives - 1,
            );
            // Update the remaining lives by decreasing it as no answer is selected.
            state = GenericState<QuizPageState>.success(updatedState);
          }
          checkForNextQuestion(quizPageState);
        } else {
          if (selectedAnswer == quizPageState.currentQuestion.correctAnswer) {
          } else {}
        }
      },
      orElse: () {},
    );
  }

  void checkForNextQuestion(QuizPageState quizPageState) {
    // If it is not the last 2 questions and remaining lives is not zero
    // Proceed to next question
    if (quizPageState.currentQuestion.index < 8 && quizPageState.lives > 0) {
      Future.delayed(const Duration(milliseconds: 3000), () {
        loadNextQuestion();
      });
    } else {
      // Any one of the last 2 question is not answered or lives is 0
      state = const GenericState<QuizPageState>.error("Game Over");
    }
  }

  void loadNextQuestion() {
    state.maybeWhen(
      success: (quizPageState) {
        final currentQuestionIndex = quizPageState.index;

        // Load next question until the last question
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
