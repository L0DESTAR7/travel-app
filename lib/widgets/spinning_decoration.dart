import 'dart:math';
import 'package:flutter/material.dart';

class SpinningDecoration extends StatefulWidget {
  final double width;
  const SpinningDecoration({Key? key, required this.width}) : super(key: key);

  @override
  State<SpinningDecoration> createState() => _State();
}

class _State extends State<SpinningDecoration>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 20));
    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (BuildContext context, Widget? child) {
        return Transform.rotate(
          angle: _controller.value * 2 * pi,
          child: child,
        );
      },
      child: Image.asset(
        "assets/images/Decoration.png"
      )
      );
  }
}

