import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: onPressed,
          backgroundColor: Colors.black,
          child: const Icon(
            Icons.chevron_right,
            color: Colors.white,
            size: 48,
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          'continuar',
          style: TextStyle(letterSpacing: 1),
        ),
      ],
    );
  }
}
