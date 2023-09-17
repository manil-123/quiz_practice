import 'package:flutter/material.dart';

class AnswerResultContainer extends StatelessWidget {
  const AnswerResultContainer({
    super.key,
    required this.backgroundColor,
    this.iconData,
    required this.message,
  });

  final Color backgroundColor;
  final IconData? iconData;
  final String message;

  @override
  Widget build(BuildContext context) {
    final children = <Widget>[];

    if (iconData != null) {
      children.addAll([
        Icon(
          iconData,
          color: Colors.white,
        ),
        const SizedBox(
          width: 8.0,
        ),
      ]);
    }

    children.add(
      Text(
        message,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
      ),
    );

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: children,
      ),
    );
  }
}
