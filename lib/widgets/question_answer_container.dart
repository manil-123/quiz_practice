import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:quiz_practice/constants/colors.dart';
import 'package:quiz_practice/utils/timer_painter.dart';

class QuestionAnswerContainer extends StatefulWidget {
  const QuestionAnswerContainer({super.key});

  @override
  State<QuestionAnswerContainer> createState() =>
      _QuestionAnswerContainerState();
}

class _QuestionAnswerContainerState extends State<QuestionAnswerContainer>
    with TickerProviderStateMixin {
  double progress = 0.0;
  late Timer timer;
  int seconds = 10;

  int? _selectedIndex;

  @override
  void initState() {
    super.initState();
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
        progress = 1.0 - (seconds / 10.0);
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
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
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
              const Text(
                'Question',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Column(
                children: List.generate(
                  4,
                  (index) => InkWell(
                    onTap: () {
                      if (_selectedIndex == null) {
                        setState(() {
                          _selectedIndex = index;
                        });
                      }
                    },
                    child: Container(
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      decoration: BoxDecoration(
                        color: _selectedIndex == index
                            ? AppColors.lightCircleColor
                            : AppColors.answerOptionColor,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Text(
                        "Option $index",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: _selectedIndex == index
                                ? Colors.white
                                : Colors.black),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ).animate(
          effects: [
            const ScaleEffect(
              curve: Curves.easeIn,
              duration: Duration(
                milliseconds: 800,
              ),
            ),
          ],
        ),
        seconds != 0
            ? Positioned(
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
                      '$seconds',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              )
            : Positioned(
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
              )
      ],
    );
  }
}
