import 'package:flutter/material.dart';
import 'package:tandamos/app/screens/commons/tandamos_app_bar.dart';

import 'local_widgets/new_tanda_header.dart';

class TandaListaPage extends StatelessWidget {
  const TandaListaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: tandamosAppBar(),
        body: Column(
          children: const [
            NewTandaHeader(page: 4),
            Expanded(
              child: Center(
                child: Text('Listo. Ahora te pediremos algunos datos.'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
