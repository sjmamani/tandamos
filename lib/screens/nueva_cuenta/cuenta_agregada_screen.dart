import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:tandamos/screens/commons/custom_floating_action_button.dart';

class CuentaAgregadaScreen extends StatelessWidget {
  const CuentaAgregadaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        painter: YellowCirclePainter(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Padding(
                padding: EdgeInsets.only(bottom: 50),
                child: Text(
                  '¡Listo!',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
              ),
              Icon(
                Icons.sentiment_very_satisfied_outlined,
                size: 64,
              ),
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Text(
                  'Cuenta añadida',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: CustomFloatingActionButton(onPressed: () {}),
    );
  }
}

class YellowCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Colors.yellow[200]!;
    final path = Path();

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
