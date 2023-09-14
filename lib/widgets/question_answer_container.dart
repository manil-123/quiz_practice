import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quiz_practice/constants/colors.dart';
import 'package:quiz_practice/models/question.dart';
import 'package:quiz_practice/provider/quiz_page_provider.dart';
import 'package:quiz_practice/utils/timer_painter.dart';

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
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_timerRemainingSeconds > 0) {
          _timerRemainingSeconds--;
        }
        if (_timerRemainingSeconds == 0) {
          timer.cancel();
          ref.read(quizPageProvider.notifier).checkAnswer();
          Future.delayed(const Duration(milliseconds: 1700), () {
            _timerRemainingSeconds = 10;
            startTimer();
            setState(() {});
            _animateKey = UniqueKey();
          });
        }
        progress = 1.0 - (_timerRemainingSeconds / 10.0);
      });
    });
  }

  void restartTimer() {
    timer.cancel(); // Cancel the existing timer
    _timerRemainingSeconds = 10;
    startTimer(); // Restart the timer
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final quizPageState = ref.watch(quizPageProvider);

    ref.listen(quizPageProvider, (previous, next) {
      log(previous.toString());
      log(next.toString());
      next.whenOrNull(
        success: (data) {
          log(next.toString());
        },
      );
    });

    return quizPageState.maybeWhen(
      orElse: () {
        return const CircularProgressIndicator();
      },
      error: (errorMessgae) {
        return Center(
          child: Text(
            errorMessgae,
            style: const TextStyle(
              color: Colors.red,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
        );
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
                } else if (_timerRemainingSeconds == 0 &&
                    quizDataSuccessState.selectedAnswer == null) {
                  return Positioned(
                    left: 0,
                    right: 0,
                    top: -16,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                            vertical: 8.0,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.timer,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 8.0,
                              ),
                              Text(
                                'TIME OVER',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ).animate().shake(
                              delay: const Duration(milliseconds: 700),
                              duration: const Duration(milliseconds: 1000),
                            ),
                      ],
                    ),
                  );
                } else {
                  return Positioned(
                    left: 0,
                    right: 0,
                    top: -16,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                            vertical: 8.0,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: const Text(
                            'Please wait... ',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ).animate().shake(
                          delay: const Duration(milliseconds: 700),
                          duration: const Duration(milliseconds: 1000),
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

class AnswerOption extends StatelessWidget {
  final String text;
  final String? selectedAnswer;

  const AnswerOption({
    Key? key,
    required this.text,
    required this.selectedAnswer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isSelected = text == selectedAnswer && selectedAnswer != null;
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      decoration: BoxDecoration(
        color: isSelected
            ? AppColors.lightCircleColor
            : AppColors.answerOptionColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: isSelected ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}
