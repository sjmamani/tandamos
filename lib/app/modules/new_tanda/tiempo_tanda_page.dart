import 'package:flutter/material.dart';
import 'package:tandamos/app/modules/new_tanda/aporte_tanda_page.dart';
import 'package:tandamos/app/modules/new_tanda/semana_recibo_page.dart';
import 'package:tandamos/app/screens/commons/custom_fab_list.dart';
import 'package:tandamos/app/screens/commons/custom_floating_action_button.dart';
import 'package:tandamos/app/screens/commons/tandamos_app_bar.dart';

import 'local_widgets/new_tanda_header.dart';

class TiempoTandaPage extends StatelessWidget {
  const TiempoTandaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: tandamosAppBar(),
        body: Column(
          children: const [
            NewTandaHeader(page: 2),
            Expanded(
              child: Center(child: Text('¿Por cuánto tiempo?')),
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
                  builder: (BuildContext context) => const SemanaReciboPage(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
