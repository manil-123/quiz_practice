import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:quiz_practice/constants/colors.dart';

class RulesContainer extends StatefulWidget {
  const RulesContainer({super.key, required this.seconds});

  final int seconds;

  @override
  State<RulesContainer> createState() => _RulesContainerState();
}

class _RulesContainerState extends State<RulesContainer> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            vertical: 30.0,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Rules',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Column(
                children: List.generate(
                  4,
                  (index) => Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10.0),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10.0),
                    decoration: BoxDecoration(
                      color: AppColors.answerOptionColor,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Text(
                      "Rules $index",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: -16,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Text(
                  'नियमहरु ',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    ).animate(
      effects: [
        if (widget.seconds > 4)
          const ScaleEffect(
            curve: Curves.easeIn,
            duration: Duration(
              milliseconds: 800,
            ),
          ),
        if (widget.seconds > 1 && widget.seconds < 4)
          const ScaleEffect(
            curve: Curves.easeIn,
            begin: Offset(1, 1),
            end: Offset(0.5, 0.5),
            duration: Duration(
              milliseconds: 500,
            ),
          ),
        if (widget.seconds < 2) ...[
          const ScaleEffect(
            curve: Curves.easeIn,
            begin: Offset(0.5, 0.5),
            end: Offset(0.5, 0.5),
            duration: Duration(
              milliseconds: 500,
            ),
          ),
          const SlideEffect(
            curve: Curves.easeIn,
            duration: Duration(
              milliseconds: 250,
            ),
            delay: Duration(
              milliseconds: 400,
            ),
            begin: Offset(0, 0),
            end: Offset(0, 1),
          )
        ]
      ],
    );
  }
}
