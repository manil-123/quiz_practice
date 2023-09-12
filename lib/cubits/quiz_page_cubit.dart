import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:quiz_practice/app/state/generic_state.dart';
import 'package:quiz_practice/constants/question_list.dart';
import 'package:quiz_practice/models/quiz_page_state.dart';

@injectable
class QuizPageCubit extends Cubit<GenericState<QuizPageState>> {
  QuizPageCubit()
      : super(
          const GenericState<QuizPageState>.initial(),
        );

  void loadQuiz(int level) async {
    emit(
      const GenericState<QuizPageState>.loading(),
    );

    late QuizPageState data;

    switch (level) {
      case 1:
        data = QuizPageState(
          level: level,
          questionsList: level1QuestionList,
          currentQuestion: level1QuestionList[0],
          currentQuestionIndex: 0,
        );
      case 2:
        data = QuizPageState(
          level: level,
          questionsList: level2QuestionList,
          currentQuestion: level2QuestionList[0],
          currentQuestionIndex: 0,
        );
      case 3:
        data = QuizPageState(
          level: level,
          questionsList: level3QuestionList,
          currentQuestion: level3QuestionList[0],
          currentQuestionIndex: 0,
        );
    }
    emit(
      GenericState<QuizPageState>.success(data),
    );
  }

  void loadNextQuestion() {
    state.maybeWhen(
      success: (quizPageState) {
        final currentQuestionIndex = quizPageState.currentQuestionIndex;
        final questionsList = quizPageState.questionsList;

        if (currentQuestionIndex! < questionsList.length - 1) {
          final nextQuestionIndex = currentQuestionIndex + 1;
          final nextQuestion = questionsList[nextQuestionIndex];
          final updatedState = quizPageState.copyWith(
            currentQuestion: nextQuestion,
            currentQuestionIndex: nextQuestionIndex,
          );
          emit(
            GenericState<QuizPageState>.success(updatedState),
          );
        }
      },
      orElse: () {},
    );
  }
}
