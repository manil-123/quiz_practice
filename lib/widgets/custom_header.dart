import 'package:flutter/material.dart';
import 'package:quiz_practice/utils/circle_painter.dart';
import 'package:quiz_practice/utils/timer_painter.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({
    super.key,
    required this.progress,
    required this.seconds,
    required this.level,
  });

  final double progress;
  final int seconds;
  final int level;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            InkWell(
              onTap: () => Navigator.of(context).pop(),
              child: SizedBox(
                width: 100,
                height: 100,
                child: CustomPaint(
                  painter: CirclePainter(),
                ),
              ),
            ),
            const Icon(
              Icons.close,
              color: Colors.white,
              size: 16,
            ),
          ],
        ),
        Text(
          'Level $level',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: CustomPaint(
                painter: TimerPainter(progress),
              ),
            ),
            Text(
              '$seconds',
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
