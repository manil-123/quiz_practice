import 'package:flutter/material.dart';
import 'package:quiz_practice/constants/colors.dart';

class GameOver extends StatelessWidget {
  const GameOver({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AlertDialog(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(0.0),
          ),
        ),
        title: Image.asset('assets/explore_image/game_over.jpg'),
        contentPadding: const EdgeInsets.only(
          top: 32,
        ),
        content: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: AppColors.purpleColor.withOpacity(0.8),
            ),
            width: double.infinity,
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 6.0),
              child: Text(
                'Exit Game',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
