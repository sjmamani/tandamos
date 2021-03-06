import 'package:flutter/material.dart';
import 'package:tandamos/app/theme/app_theme.dart';

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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: null,
            onPressed: onPressed,
            backgroundColor: kC,
            elevation: 0,
            child: Icon(
              icon,
              color: Colors.white,
              size: 48,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            text,
            style: const TextStyle(letterSpacing: 1),
          ),
        ],
      ),
    );
  }
}
