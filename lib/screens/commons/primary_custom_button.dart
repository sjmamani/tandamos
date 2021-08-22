import 'package:flutter/material.dart';

import '../../util/colors.dart';

class PrimaryCustomButton extends StatelessWidget {
  const PrimaryCustomButton({
    Key? key,
    required this.text,
    this.color = primaryColor,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final Color color;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
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
        child: Text(text),
      ),
    );
  }
}
