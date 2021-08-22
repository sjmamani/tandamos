import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(right: 10),
          child: Icon(Icons.send_outlined),
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
      ],
    );
  }
}
