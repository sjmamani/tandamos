import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Icon(icon),
        ),
        Flexible(
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      ],
    );
  }
}
