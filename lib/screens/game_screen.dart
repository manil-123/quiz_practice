import 'dart:async';
import 'package:flutter/material.dart';
import 'package:quiz_practice/constants/colors.dart';
import 'package:quiz_practice/widgets/game_countdown_timer.dart';
import 'package:quiz_practice/widgets/game_header.dart';
import 'package:quiz_practice/widgets/game_status.dart';
import 'package:quiz_practice/widgets/question_answer_container.dart';
import 'package:quiz_practice/widgets/rules_container.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  int _seconds = 6;
  bool _isVisible = true;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (mounted) {
        setState(() {
          if (_seconds != 0) {
            _seconds--;
          }
        });
      }
    });
    Timer.periodic(const Duration(milliseconds: 300), (timer) {
      if (mounted) {
        setState(() {
          if (_seconds < 6 && _seconds != 0) {
            _isVisible = !_isVisible; // Toggle visibility every second
          }
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.purpleColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const GameHeader(),
              const SizedBox(
                height: 4.0,
              ),
              const GameStatus(
                status: 0,
              ),
              const SizedBox(
                height: 4.0,
              ),
              Align(
                alignment: Alignment.center,
                child: GameCountDownTimer(
                  seconds: _seconds,
                  isVisible: _isVisible,
                ),
              ),
              const Expanded(
                child:
                    SizedBox(), // Empty Expanded widget to take remaining space
              ),
              _seconds != 0
                  ? RulesContainer(
                      seconds: _seconds,
                    )
                  : Visibility(
                      visible: _seconds == 0,
                      child: const QuestionAnswerContainer(),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
