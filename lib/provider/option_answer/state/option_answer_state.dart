import 'package:freezed_annotation/freezed_annotation.dart';

part 'option_answer_state.freezed.dart';

@freezed
class OptionAnswerState with _$OptionAnswerState {
  const factory OptionAnswerState.initial() = _OptionAnswerInitial;

  // state for representing correct selected answer
  const factory OptionAnswerState.correct() = _OptionAnswerCorrect;

  // state for representing wrong selected answer
  const factory OptionAnswerState.wrong() = _OptionAnswerWrong;

  // state for representing no selected answer
  const factory OptionAnswerState.empty() = _OptionAnswerEmpty;
}
