import 'dart:async';
import 'package:flutter/material.dart';
import 'package:quiz_practice/constants/colors.dart';
import 'package:slide_countdown/slide_countdown.dart';

class GameCountDownTimer extends StatefulWidget {
  const GameCountDownTimer({super.key});

  @override
  State<GameCountDownTimer> createState() => _GameCountDownTimerState();
}

class _GameCountDownTimerState extends State<GameCountDownTimer> {
  int _seconds = 20;
  bool _isVisible = true;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_seconds != 0) {
          _seconds--;
        }
      });
    });
    Timer.periodic(const Duration(milliseconds: 300), (timer) {
      setState(() {
        if (_seconds < 6 && _seconds != 0) {
          _isVisible = !_isVisible; // Toggle visibility every second
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Visibility(
          visible: _seconds != 0,
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
                animation: _isVisible
                    ? const AlwaysStoppedAnimation(1.0)
                    : const AlwaysStoppedAnimation(0.0),
                builder: (context, child) {
                  return Opacity(
                    opacity: _isVisible ? 1.0 : 0.0,
                    child: SlideCountdownSeparated(
                      duration: Duration(seconds: _seconds),
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
