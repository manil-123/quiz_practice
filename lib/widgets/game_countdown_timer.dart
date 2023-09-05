import 'package:flutter/material.dart';
import 'package:quiz_practice/constants/colors.dart';
import 'package:slide_countdown/slide_countdown.dart';

class GameCountDownTimer extends StatelessWidget {
  const GameCountDownTimer(
      {super.key, required this.isVisible, required this.seconds});

  final int seconds;

  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Visibility(
          visible: seconds != 0,
          child: Column(
            children: [
              const Text(
                'Game Starts in',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
              AnimatedBuilder(
                animation: isVisible
                    ? const AlwaysStoppedAnimation(1.0)
                    : const AlwaysStoppedAnimation(0.0),
                builder: (context, child) {
                  return Opacity(
                    opacity: isVisible ? 1.0 : 0.0,
                    child: SlideCountdownSeparated(
                      duration: Duration(seconds: seconds),
                      height: 40,
                      width: 40,
                      separatorStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: AppColors.lightCircleColor,
                        ),
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      showZeroValue: true,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
