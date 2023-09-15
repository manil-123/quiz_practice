import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quiz_practice/provider/option_answer/state/option_answer_state.dart';

final optionAnswerProvider =
    StateNotifierProvider<OptionAnswerNotifier, OptionAnswerState>(
  (ref) => OptionAnswerNotifier(),
);

class OptionAnswerNotifier extends StateNotifier<OptionAnswerState> {
  OptionAnswerNotifier()
      : super(
          const OptionAnswerState.initial(),
        );

  void toggleAnswer(String? selectedAnswer, String correctAnswer) {
    Future.delayed(const Duration(milliseconds: 1500), () {
      if (selectedAnswer == null) {
        state = const OptionAnswerState.empty();
        return;
      }
      if (selectedAnswer == correctAnswer) {
        state = const OptionAnswerState.correct();
      } else {
        state = const OptionAnswerState.wrong();
      }
    });
  }

  void resetOptions() {
    state = const OptionAnswerState.initial();
  }
}
