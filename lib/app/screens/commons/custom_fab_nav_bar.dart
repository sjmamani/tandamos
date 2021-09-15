import 'package:flutter/material.dart';

import 'custom_fab_list.dart';
import 'custom_floating_action_button.dart';

class CustomFabNavBar extends StatelessWidget {
  const CustomFabNavBar({
    Key? key,
    required this.buttons,
  }) : super(key: key);

  final List<CustomFloatingActionButton> buttons;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SizedBox(
        height: 85,
        child: CustomFABList(children: buttons),
      ),
    );
  }
}
