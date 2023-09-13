import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz_practice/constants/colors.dart';
import 'package:quiz_practice/utils/timer_painter.dart';

class QuestionAnswerContainer extends StatefulWidget {
  const QuestionAnswerContainer({super.key});

  @override
  State<QuestionAnswerContainer> createState() =>
      _QuestionAnswerContainerState();
}

class _QuestionAnswerContainerState extends State<QuestionAnswerContainer>
    with SingleTickerProviderStateMixin {
  double progress = 0.0;
  late Timer timer;
  int seconds = 10;

  late final AnimationController _controller;
  late final Animation<double> _animation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    )..repeat();
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );
    _controller.forward(); // Start the animation
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
        AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Transform.scale(
              scale: _animation.value,
              child: child,
            );
          },
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
                    (index) => Container(
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      decoration: BoxDecoration(
                        color: AppColors.answerOptionColor,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Text(
                        "Option $index",
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
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
      ],
    );
  }
}
