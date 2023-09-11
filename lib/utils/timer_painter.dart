import 'package:flutter/material.dart';
import 'package:quiz_practice/constants/colors.dart';

class TimerPainter extends CustomPainter {
  final double progress;

  TimerPainter(this.progress);

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = AppColors.lightCircleColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3;

    final Rect rect =
        Rect.fromCircle(center: size.center(Offset.zero), radius: 25);
    canvas.drawCircle(size.center(Offset.zero), 25, paint);

    final Paint redPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3;

    final double sweepAngle = 2 * progress * 3.14;
    canvas.drawArc(rect, -1.57, sweepAngle, false, redPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
