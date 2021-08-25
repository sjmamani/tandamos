import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    Key? key,
    required this.onPressed,
    this.text = 'continuar',
    this.icon = Icons.chevron_right,
  }) : super(key: key);

  final Function() onPressed;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: onPressed,
          backgroundColor: Colors.blueGrey[900],
          elevation: 0,
          child: Icon(
            icon,
            color: Colors.white,
            size: 48,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          text,
          style: const TextStyle(letterSpacing: 1),
        ),
      ],
    );
  }
}
