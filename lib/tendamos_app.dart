import 'package:flutter/material.dart';
import 'package:tandamos/screens/datos_cuenta/datos_cuenta_screen.dart';
import 'package:tandamos/screens/pago/pago_screen.dart';
import 'package:tandamos/util/colors.dart';

class TendamosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tandamos',
      theme: ThemeData(
        primaryColor: primaryColor,
      ),
      // home: const DatosCuentaScreen(),
      home: const PagoScreen(),
    );
  }
}
