import 'package:flutter/material.dart';
import 'package:quiz_practice/constants/colors.dart';
import 'package:quiz_practice/widgets/game_header.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.purpleColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              GameHeader(),
            ],
          ),
        ),
      ),
    );
  }
}
