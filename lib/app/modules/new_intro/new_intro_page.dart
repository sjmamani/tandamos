import 'package:flutter/material.dart';
import 'package:tandamos/app/screens/commons/primary_custom_button.dart';
import 'package:tandamos/app/theme/app_theme.dart';

import 'local_widgets/custom_arrow.dart';
import 'local_widgets/first_page.dart';
import 'local_widgets/second_page.dart';
import 'local_widgets/third_page.dart';

class NewIntroPage extends StatefulWidget {
  const NewIntroPage({Key? key}) : super(key: key);

  @override
  _NewIntroPageState createState() => _NewIntroPageState();
}

class _NewIntroPageState extends State<NewIntroPage> {
  int currentIndex = 0;
  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        painter: IntroPainter(),
        child: Stack(
          children: [
            PageView(
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              controller: controller,
              children: const <Widget>[
                FirstPage(),
                SecondPage(),
                ThirdPage(),
              ],
            ),
            const CustomArrow(
              icon: Icons.chevron_left,
              isRight: false,
            ),
            const CustomArrow(
              icon: Icons.chevron_right,
              isRight: true,
            ),
            Positioned(
              bottom: 140,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildDot(0),
                  buildDot(1),
                  buildDot(2),
                ],
              ),
            ),
            if (currentIndex == 2)
              Positioned(
                bottom: 30,
                left: 0,
                right: 0,
                child: PrimaryCustomButton(
                  text: 'Iniciar',
                  onPressed: () {},
                  color: kC,
                  width: 50,
                  height: 60,
                ),
              )
          ],
        ),
      ),
    );
  }

  Container buildDot(int index) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      height: 20,
      width: 20,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: index == currentIndex ? kPrimary : kNLight,
      ),
    );
  }
}

class IntroPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = kGreen;
    final path = Path();

    path.moveTo(0, size.height * 0.5);
    path.lineTo(size.width * 0.6, size.height * 0.45);
    path.lineTo(size.width, size.height * 0.4);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(IntroPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(IntroPainter oldDelegate) => false;
}
