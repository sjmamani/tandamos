import 'package:flutter/material.dart';

import '../../util/colors.dart';

class PrimaryCustomButton extends StatelessWidget {
  const PrimaryCustomButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(text),
        style: ElevatedButton.styleFrom(
          fixedSize: Size(250, 60),
          textStyle: const TextStyle(fontSize: 20),
          elevation: 0.0,
          primary: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
    );
  }
}
