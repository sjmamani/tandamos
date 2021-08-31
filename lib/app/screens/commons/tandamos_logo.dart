import 'package:flutter/material.dart';

class TandamosLogo extends StatelessWidget {
  const TandamosLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        height: 30,
        width: 120,
        child: Image(image: AssetImage("assets/tandamos.png")),
      ),
    );
  }
}
