import 'package:flutter/material.dart';

import 'custom_floating_action_button.dart';

class CustomFABList extends StatelessWidget {
  CustomFABList({
    Key? key,
    required this.children,
  })  : assert(children.length <= 2, 'La cantidad máxima de FAB son dos'),
        assert(children.isNotEmpty),
        super(key: key);

  final List<CustomFloatingActionButton> children;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: children.length == 2
          ? MainAxisAlignment.spaceBetween
          : MainAxisAlignment.end,
      children: children,
    );
  }
}
