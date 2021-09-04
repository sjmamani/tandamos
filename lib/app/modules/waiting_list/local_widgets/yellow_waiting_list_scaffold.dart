import 'package:flutter/material.dart';
import 'package:tandamos/app/theme/app_theme.dart';

class YellowWaitingListScaffold extends StatelessWidget {
  const YellowWaitingListScaffold({Key? key, required this.content})
      : super(key: key);

  final Widget content;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: CustomPaint(
        painter: YellowShapePainter(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: content,
        ),
      ),
    ));
  }
}

class YellowShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = kYellow;
    final path = Path();

    path.moveTo(0, size.height * 0.85);
    path.lineTo(size.width * 0.2, size.height * 0.85);
    path.lineTo(size.width, size.height * 0.7);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(YellowShapePainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(YellowShapePainter oldDelegate) => false;
}
