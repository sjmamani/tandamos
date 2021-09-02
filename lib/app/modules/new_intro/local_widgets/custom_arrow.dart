import 'package:flutter/material.dart';

class CustomArrow extends StatelessWidget {
  const CustomArrow({
    Key? key,
    required this.icon,
    required this.isRight,
  }) : super(key: key);

  final IconData icon;
  final bool isRight;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isRight ? Alignment.centerRight : Alignment.centerLeft,
      child: Icon(
        icon,
        color: Colors.black,
        size: 80,
      ),
    );
  }
}
