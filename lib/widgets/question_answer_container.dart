import 'dart:async';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quiz_practice/constants/colors.dart';
import 'package:quiz_practice/models/question.dart';
import 'package:quiz_practice/provider/option_answer/option_answer_provider.dart';
import 'package:quiz_practice/provider/quiz_page_provider.dart';
import 'package:quiz_practice/utils/timer_painter.dart';
import 'package:quiz_practice/widgets/answer_result_container.dart';

import 'game_over.dart';

class QuestionAnswerContainer extends StatefulHookConsumerWidget {
  const QuestionAnswerContainer({super.key});

  @override
  ConsumerState<QuestionAnswerContainer> createState() =>
      _QuestionAnswerContainerState();
}

class _QuestionAnswerContainerState
    extends ConsumerState<QuestionAnswerContainer>
    with TickerProviderStateMixin {
  double progress = 0.0;
  late Timer timer;
  int _timerRemainingSeconds = 10;
  bool _shouldRestartTimer = true;

  final _audioPlayer = AudioPlayer();

  UniqueKey _animateKey = UniqueKey();

  @override
  void initState() {
    super.initState();
    startTimer();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(quizPageProvider.notifier).loadQuizFirstTime();
    });
  }

  void startTimer() {
    _playSound();
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (mounted) {
        setState(() {
          if (_timerRemainingSeconds > 0) {
            _timerRemainingSeconds--;
          }
          if (_timerRemainingSeconds == 0) {
            timer.cancel();
            _resetSound();
            _shouldRestartTimer =
                ref.read(quizPageProvider.notifier).checkAnswer();
            if (_shouldRestartTimer) {
              Future.delayed(const Duration(milliseconds: 3000), () {
                _timerRemainingSeconds = 10;
                startTimer();
                if (mounted) {
                  setState(() {
                    _animateKey = UniqueKey();
                  });
                }
              });
            }
          }
          progress = 1.0 - (_timerRemainingSeconds / 10.0);
        });
      }
    });
  }

  void _playSound() async {
    Future.delayed(const Duration(milliseconds: 800), () async {
      await _audioPlayer.play(
        AssetSource('sounds/timer.mp3'),
        volume: 1,
      );
    });
  }

  void _resetSound() async {
    await _audioPlayer.stop();
  }

  // void restartTimer() {
  //   timer.cancel(); // Cancel the existing timer
  //   _timerRemainingSeconds = 10;
  //   startTimer(); // Restart the timer
  // }

  @override
  void dispose() {
    timer.cancel();
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final quizPageState = ref.watch(quizPageProvider);

    final optionAnswerState = ref.watch(optionAnswerProvider);

    return quizPageState.maybeWhen(
      orElse: () {
        return const CircularProgressIndicator();
      },
      error: (errorMessgae) {
        _resetSound();
        return const GameOver();
      },
      success: (quizDataSuccessState) {
        return Stack(
          clipBehavior: Clip.none,
          children: [
            Animate(
              key: _animateKey,
              effects: const [
                ScaleEffect(
                  curve: Curves.easeIn,
                  duration: Duration(
                    milliseconds: 800,
                  ),
                ),
              ],
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  vertical: 30.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      quizDataSuccessState.currentQuestion.question,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Column(
                      children: List.generate(
                        4,
                        (index) => InkWell(
                          onTap: () {
                            if (quizDataSuccessState.selectedAnswer == null &&
                                _timerRemainingSeconds != 0) {
                              ref.read(quizPageProvider.notifier).selectAnswer(
                                    _getOptionText(
                                        quizDataSuccessState.currentQuestion,
                                        index),
                                  );
                            }
                          },
                          child: AnswerOption(
                            selectedAnswer: quizDataSuccessState.selectedAnswer,
                            text: _getOptionText(
                                quizDataSuccessState.currentQuestion, index),
                            correctAnswer: quizDataSuccessState
                                .currentQuestion.correctAnswer,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Builder(
              builder: (context) {
                if (_timerRemainingSeconds != 0) {
                  return Positioned(
                    left: 0,
                    right: 0,
                    top: -30,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: AppColors.lightPurpleColor,
                          child: CustomPaint(
                            painter: TimerPainter(progress),
                          ),
                        ),
                        Text(
                          '$_timerRemainingSeconds',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  );
                }
                // When answer is given on time
                // Display UI based on correct/incorrect answer
                else {
                  return Positioned(
                    left: 0,
                    right: 0,
                    top: -16,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        optionAnswerState.maybeWhen(
                          correct: () {
                            return const AnswerResultContainer(
                              backgroundColor: Colors.blue,
                              iconData: Icons.check,
                              message: 'Correct',
                            );
                          },
                          orElse: () {
                            return const AnswerResultContainer(
                              backgroundColor: Colors.red,
                              iconData: null,
                              message: 'Please wait...',
                            );
                          },
                          empty: () {
                            return const AnswerResultContainer(
                              backgroundColor: Colors.blue,
                              iconData: Icons.timer,
                              message: 'TIME OVER',
                            );
                          },
                          wrong: () {
                            return const AnswerResultContainer(
                              backgroundColor: Colors.red,
                              iconData: Icons.close,
                              message: 'Wrong',
                            );
                          },
                        ),
                      ],
                    ).animate().shake(
                          delay: const Duration(milliseconds: 500),
                          duration: const Duration(milliseconds: 700),
                        ),
                  );
                }
              },
            )
          ],
        );
      },
    );
  }

  String _getOptionText(Question quizQuestion, int index) {
    switch (index) {
      case 0:
        return quizQuestion.optionA;
      case 1:
        return quizQuestion.optionB;
      case 2:
        return quizQuestion.optionC;
      case 3:
        return quizQuestion.optionD;
      default:
        return '';
    }
  }
}

class AnswerOption extends ConsumerWidget {
  const AnswerOption({
    Key? key,
    required this.text,
    required this.selectedAnswer,
    required this.correctAnswer,
  }) : super(key: key);

  final String text;
  final String? selectedAnswer;
  final String correctAnswer;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final optionAnswerState = ref.watch(optionAnswerProvider);

    final isSelected = text == selectedAnswer && selectedAnswer != null;

    return optionAnswerState.maybeWhen(
      orElse: () {
        // It represents correct or wrong state of optionAnswerState
        // Show correct answer when the answer is selected
        return _answerContainer(
          text == correctAnswer ? Colors.green : AppColors.answerOptionColor,
          text == correctAnswer ? Colors.white : Colors.black,
        );
      },
      initial: () {
        return _answerContainer(
          isSelected ? AppColors.lightCircleColor : AppColors.answerOptionColor,
          isSelected ? Colors.white : Colors.black,
        );
      },
      empty: () {
        return _answerContainer(
          isSelected ? AppColors.lightCircleColor : AppColors.answerOptionColor,
          isSelected ? Colors.white : Colors.black,
        );
      },
    );
  }

  Widget _answerContainer(Color backgroundColor, Color textColor) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: textColor,
        ),
      ),
    );
  }
}
