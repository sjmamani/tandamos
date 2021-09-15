import 'package:flutter/material.dart';
import 'package:tandamos/app/modules/pago/metodo_pago_dialog.dart';
import 'package:tandamos/app/theme/app_theme.dart';

class TandamosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tandamos',
      theme: ThemeData(
        primaryColor: kPrimary,
      ),
      home: const MetodoPagoDialog(),
    );
  }
}
