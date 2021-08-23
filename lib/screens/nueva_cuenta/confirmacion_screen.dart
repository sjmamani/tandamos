import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:tandamos/screens/commons/custom_floating_action_button.dart';

class ConfirmacionScreen extends StatelessWidget {
  const ConfirmacionScreen({
    Key? key,
    required this.title,
    required this.message,
    this.greeting = '',
    this.showFAB = false,
  }) : super(key: key);

  final String title;
  final String message;
  final String greeting;
  final bool showFAB;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        painter: YellowCirclePainter(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Text(
                  title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 24),
                ),
              ),
              const Icon(
                Icons.sentiment_very_satisfied_outlined,
                size: 64,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Text(
                  message,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  greeting,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton:
          showFAB ? CustomFloatingActionButton(onPressed: () {}) : null,
    );
  }
}

class YellowCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Colors.yellow[200]!;
    // final path = Path();

    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(0, size.height / 2),
        height: size.height,
        width: size.width * 1.4,
      ),
      -math.pi / 2,
      math.pi,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
