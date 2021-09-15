import 'package:flutter/material.dart';
import 'package:tandamos/app/modules/new_tanda/tanda_lista_page.dart';
import 'package:tandamos/app/screens/commons/custom_fab_nav_bar.dart';
import 'package:tandamos/app/screens/commons/custom_floating_action_button.dart';
import 'package:tandamos/app/screens/commons/tandamos_app_bar.dart';

import 'local_widgets/new_tanda_header.dart';

class SemanaReciboPage extends StatelessWidget {
  const SemanaReciboPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: tandamosAppBar(),
        body: Column(
          children: const [
            NewTandaHeader(page: 3),
            Expanded(
              child: Center(
                child: Text('¿En qué semana quieres recibir tu dinero?'),
              ),
            ),
          ],
        ),
        bottomNavigationBar: CustomFabNavBar(
          buttons: [
            CustomFloatingActionButton(
              text: 'Atrás',
              icon: Icons.chevron_left,
              onPressed: () => Navigator.pop(context),
            ),
            CustomFloatingActionButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const TandaListaPage(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
