import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(
            right: 10,
          ),
          color: Colors.black,
          height: 1,
          width: 130,
        ),
        Text('ó'),
        Container(
          margin: const EdgeInsets.only(
            left: 10,
          ),
          color: Colors.black,
          height: 1,
          width: 130,
        ),
      ],
    );
  }
}
