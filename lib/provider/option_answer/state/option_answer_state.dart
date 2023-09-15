import 'package:freezed_annotation/freezed_annotation.dart';

part 'option_answer_state.freezed.dart';

@freezed
class OptionAnswerState with _$OptionAnswerState {
  const factory OptionAnswerState.initial() = _OptionAnswerInitial;

  const factory OptionAnswerState.correct() = _OptionAnswerCorrect;

  const factory OptionAnswerState.wrong() = _OptionAnswerWrong;

  const factory OptionAnswerState.empty() = _OptionAnswerEmpty;
}
