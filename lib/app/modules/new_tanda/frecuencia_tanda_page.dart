import 'package:flutter/material.dart';
import 'package:tandamos/app/modules/new_tanda/aporte_tanda_page.dart';
import 'package:tandamos/app/screens/commons/custom_fab_list.dart';
import 'package:tandamos/app/screens/commons/custom_floating_action_button.dart';
import 'package:tandamos/app/screens/commons/tandamos_app_bar.dart';

import 'local_widgets/new_tanda_header.dart';

class FrecuenciaTandaPage extends StatelessWidget {
  const FrecuenciaTandaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: tandamosAppBar(),
        body: Column(
          children: const [
            NewTandaHeader(page: 0),
            Expanded(
              child: Center(
                child: Text('¿Cada cuánto quieres aportar?'),
              ),
            ),
          ],
        ),
        floatingActionButton: CustomFABList(
          children: [
            CustomFloatingActionButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const AporteTandaPage(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
