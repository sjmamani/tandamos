import 'package:flutter/material.dart';

import '../../util/colors.dart';

class SwitchText extends StatelessWidget {
  const SwitchText({
    Key? key,
    required this.text,
    required this.linkedText,
    required this.navigateTo,
  }) : super(key: key);

  final String text;
  final String linkedText;
  final Function() navigateTo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text),
          const SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: navigateTo,
            child: Text(
              linkedText,
              style: const TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
