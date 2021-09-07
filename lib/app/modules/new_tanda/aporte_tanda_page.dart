import 'package:flutter/material.dart';
import 'package:tandamos/app/modules/new_tanda/tiempo_tanda_page.dart';
import 'package:tandamos/app/screens/commons/custom_fab_list.dart';
import 'package:tandamos/app/screens/commons/custom_floating_action_button.dart';
import 'package:tandamos/app/screens/commons/tandamos_app_bar.dart';

import 'local_widgets/new_tanda_header.dart';

class AporteTandaPage extends StatelessWidget {
  const AporteTandaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: tandamosAppBar(),
        body: Column(
          children: const [
            NewTandaHeader(page: 1),
            Expanded(
              child: Center(child: Text('¿Cuánto quieres aportar?')),
            ),
          ],
        ),
        floatingActionButton: CustomFABList(
          children: [
            CustomFloatingActionButton(
              text: 'Atrás',
              icon: Icons.chevron_left,
              onPressed: () => Navigator.pop(context),
            ),
            CustomFloatingActionButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const TiempoTandaPage(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
