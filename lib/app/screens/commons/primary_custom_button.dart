import 'package:flutter/material.dart';

import '../../util/colors.dart';

class PrimaryCustomButton extends StatelessWidget {
  const PrimaryCustomButton({
    Key? key,
    required this.text,
    this.color = primaryColor,
    required this.onPressed,
    this.icon,
    this.fontSize = 20,
  }) : super(key: key);

  final String text;
  final double fontSize;
  final Color color;
  final Icon? icon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final iconWidget = icon ?? const SizedBox.shrink();
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromHeight(50),
          textStyle: const TextStyle(fontSize: 20),
          elevation: 0.0,
          primary: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            iconWidget,
            const SizedBox(width: 10),
            Text(
              text,
              style: TextStyle(fontSize: fontSize),
            ),
          ],
        ),
      ),
    );
  }
}
