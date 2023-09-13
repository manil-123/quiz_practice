import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:quiz_practice/constants/colors.dart';

class RulesContainer extends StatefulWidget {
  const RulesContainer({super.key, required this.seconds});

  final int seconds;

  @override
  State<RulesContainer> createState() => _RulesContainerState();
}

class _RulesContainerState extends State<RulesContainer>
    with TickerProviderStateMixin {
  late final AnimationController _slideController;
  late final Animation<double> _slideAnimation;

  late final AnimationController _scaleController;
  late final Animation<double> _scaleAnimation;

  late final AnimationController _translateController;
  late final Animation<double> _translateAnimation;

  @override
  void initState() {
    super.initState();
    _slideController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    )..repeat();
    _slideAnimation = CurvedAnimation(
      parent: _slideController,
      curve: Curves.easeIn,
    );
    _scaleController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 0.5,
    ).animate(CurvedAnimation(
      parent: _scaleController,
      curve: Curves.easeIn,
    ));
    _translateController = AnimationController(
      duration: const Duration(milliseconds: 350),
      vsync: this,
    );
    _translateAnimation = Tween<double>(
      begin: 0.0,
      end: 560,
    ).animate(CurvedAnimation(
      parent: _translateController,
      curve: Curves.easeIn,
    ));
    _slideController.forward();
    Future.delayed(const Duration(seconds: 3), () {
      _scaleController.forward().then(
            (value) => _translateController.forward(),
          );
    });
  }

  @override
  void dispose() {
    _slideController.dispose();
    _scaleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    log(_scaleAnimation.value.toString());
    return AnimatedBuilder(
      animation: widget.seconds > 4
          ? _slideAnimation
          : widget.seconds < 2
              ? _translateAnimation
              : _scaleAnimation,
      builder: (context, child) {
        if (widget.seconds > 4) {
          return Transform.scale(
            origin: const Offset(-90, -90),
            scale: _slideAnimation.value,
            child: child,
          );
        } else {
          return Transform.scale(
            origin: const Offset(0, 0),
            scale: _scaleAnimation.value,
            child: Transform.translate(
              offset: Offset(0, _translateAnimation.value),
              child: child,
            ),
          );
        }
      },
      child: Stack(
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
      ),
    );
  }
}
