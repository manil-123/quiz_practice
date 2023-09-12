import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_practice/app/state/generic_state.dart';
import 'package:quiz_practice/constants/colors.dart';
import 'package:quiz_practice/cubits/quiz_page_cubit.dart';
import 'package:quiz_practice/models/quiz_page_state.dart';
import 'package:quiz_practice/widgets/custom_header.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({
    super.key,
    required this.level,
  });

  final int level;

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  double progress = 0.0;
  late Timer timer;
  int seconds = 30;

  @override
  void initState() {
    super.initState();
    context.read<QuizPageCubit>().loadQuiz(widget.level);
    startTimer();
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (seconds > 0) {
          seconds--;
        }
        if (seconds == 0) {
          timer.cancel();
        }
        progress = 1.0 - (seconds / 30.0);
      });
    });
  }

  void restartTimer() {
    timer.cancel(); // Cancel the existing timer
    seconds = 30;
    startTimer(); // Restart the timer
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.purpleColor,
      body: BlocBuilder<QuizPageCubit, GenericState<QuizPageState>>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
              return const SizedBox();
            },
            loading: () {
              return const CircularProgressIndicator();
            },
            success: (quizPageState) {
              return SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomHeader(
                        progress: progress,
                        seconds: seconds,
                        level: widget.level,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 8.0),
                        child: LinearProgressIndicator(
                          value: (quizPageState.currentQuestionIndex!) / 10,
                          backgroundColor: AppColors.lightCircleColor,
                          valueColor:
                              const AlwaysStoppedAnimation<Color>(Colors.green),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset('assets/images/toystory.jpg'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 8.0),
                        child: Text(
                          'Question ${quizPageState.currentQuestionIndex! + 1} of 10',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 8.0),
                        child: Text(
                          quizPageState.currentQuestion!.question,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Column(
                        children: List.generate(
                          quizPageState.currentQuestion!.options.length,
                          (index) => Container(
                            height: 50,
                            width: double.infinity,
                            margin: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 10.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Center(
                              child: Text(
                                quizPageState.currentQuestion!.options[index],
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Center(
                          child: ElevatedButton(
                            onPressed: () {
                              context.read<QuizPageCubit>().loadNextQuestion();
                              restartTimer();
                            },
                            child: const Text('Next'),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
