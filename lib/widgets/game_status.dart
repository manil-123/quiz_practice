import 'package:flutter/material.dart';

class GameStatus extends StatelessWidget {
  const GameStatus({
    super.key,
    required this.status,
  });
  final int status;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Text(
        status == 0 ? 'GAME ON' : 'GAME OVER',
        style: TextStyle(
          color: status == 0 ? Colors.white : Colors.red,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
