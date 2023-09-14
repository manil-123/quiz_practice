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

  void loadQuizFirstTime(int level) async {
    state = const GenericState<QuizPageState>.loading();

    final data = QuizPageState(
      index: 0,
      currentQuestion: level1QuestionList[0],
    );

    state = GenericState<QuizPageState>.success(data);
  }

  void loadNextQuestion() {
    state.maybeWhen(
      success: (quizPageState) {
        final currentQuestionIndex = quizPageState.index;

        if (currentQuestionIndex < 10) {
          final nextQuestionIndex = currentQuestionIndex + 1;
          final nextQuestion = level1QuestionList[nextQuestionIndex];
          final updatedState = quizPageState.copyWith(
            index: currentQuestionIndex,
            currentQuestion: nextQuestion,
          );

          state = GenericState<QuizPageState>.success(updatedState);
        }
      },
      orElse: () {},
    );
  }
}
