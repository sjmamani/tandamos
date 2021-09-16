import 'package:flutter/material.dart';
import 'package:tandamos/app/theme/app_theme.dart';

class PrimaryCustomButton extends StatelessWidget {
  const PrimaryCustomButton({
    Key? key,
    required this.text,
    this.color = kPrimary,
    this.onPressed,
    this.icon,
    this.fontSize = 20,
    this.height = 50,
    this.width = 0,
  }) : super(key: key);

  final String text;
  final double fontSize;
  final Color color;
  final Icon? icon;
  final double height;
  final double width;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final iconWidget = icon ?? const SizedBox.shrink();
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: width,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          minimumSize: Size.fromHeight(height),
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
