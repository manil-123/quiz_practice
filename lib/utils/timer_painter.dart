import 'package:flutter/material.dart';
import 'package:quiz_practice/constants/colors.dart';

class TimerPainter extends CustomPainter {
  final double progress;

  TimerPainter(this.progress);

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8;

    final Rect rect =
        Rect.fromCircle(center: size.center(Offset.zero), radius: 20);
    canvas.drawCircle(size.center(Offset.zero), 20, paint);

    final Paint redPaint = Paint()
      ..color = AppColors.purpleColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8;

    final double sweepAngle = 2 * progress * 3.14;
    canvas.drawArc(rect, -1.57, sweepAngle, false, redPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
