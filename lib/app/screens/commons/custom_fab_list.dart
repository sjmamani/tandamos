import 'package:flutter/material.dart';

import 'custom_floating_action_button.dart';

class CustomFABList extends StatelessWidget {
  CustomFABList({
    Key? key,
    required this.children,
    this.mainAxisAlignment = MainAxisAlignment.end,
  })  : assert(children.length <= 2, 'La cantidad máxima de FAB son dos'),
        assert(children.isNotEmpty),
        super(key: key);

  final List<CustomFloatingActionButton> children;

  /// Only if there is one CustomFloatingActionButton in the children array.
  /// Otherwise, this property will be ignored
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: children.length == 2
          ? MainAxisAlignment.spaceBetween
          : mainAxisAlignment,
      children: children,
    );
  }
}
