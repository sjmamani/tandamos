import 'package:flutter/material.dart';

import '../../util/colors.dart';

class SecondaryCustomButton extends StatelessWidget {
  const SecondaryCustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: OutlinedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: primaryColor,
          ),
        ),
        style: ElevatedButton.styleFrom(
          fixedSize: Size(250, 60),
          textStyle: const TextStyle(fontSize: 20),
          elevation: 0.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          side: BorderSide(color: primaryColor),
        ),
      ),
    );
  }
}
