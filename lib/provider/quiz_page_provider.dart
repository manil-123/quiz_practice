import 'dart:developer';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quiz_practice/app/state/generic_state.dart';
import 'package:quiz_practice/constants/question_list.dart';
import 'package:quiz_practice/models/quiz_page_state.dart';
import 'package:quiz_practice/provider/option_answer/option_answer_provider.dart';

final quizPageProvider =
    StateNotifierProvider<QuizPageNotifier, GenericState<QuizPageState>>((ref) {
  return QuizPageNotifier(
    ref.watch(
      optionAnswerProvider.notifier,
    ),
  );
});

class QuizPageNotifier extends StateNotifier<GenericState<QuizPageState>> {
  QuizPageNotifier(this.optionAnswerProvider)
      : super(
          const GenericState<QuizPageState>.initial(),
        );

  final OptionAnswerNotifier optionAnswerProvider;

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
        final remainingLives = quizPageState.lives;
        log("remaining lives $remainingLives");

        // When user does not select any answer or the incorrect answer is selected.
        if (selectedAnswer == null ||
            selectedAnswer != quizPageState.currentQuestion.correctAnswer) {
          // if the question number is 9 or 10 and no answer is selected or
          // wrong answer is selected then game is over no matter the chances left.
          if (quizPageState.currentQuestion.index > 7 ||
              (quizPageState.currentQuestion.index < 8 &&
                  remainingLives == 0)) {
            Future.delayed(const Duration(milliseconds: 3000), () {
              state = const GenericState<QuizPageState>.error("Game Over");
            });
          } else {
            // It will need to reduce coin when remaining lives is available.
            // reduceCoins();
            //
            //
            // Load next question with the updated lives count which is decreased by 1.
            loadNextQuestion(remainingLives - 1);
          }
        } else {
          // If answer is correct then check for the next question.
          loadNextQuestion(remainingLives);
        }

        // This will show Correct/Wrong answer text in a container
        // Also it will show correct answer with green background on the options list.
        // For UI purpose only.
        optionAnswerProvider.toggleAnswer(
          selectedAnswer,
          quizPageState.currentQuestion.correctAnswer,
        );
      },
      orElse: () {},
    );
  }

  void loadNextQuestion(int livesCount) {
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
            lives: livesCount,
            selectedAnswer: null,
          );
          Future.delayed(const Duration(milliseconds: 3000), () {
            state = GenericState<QuizPageState>.success(updatedState);
          });
        }
      },
      orElse: () {},
    );
  }
}
