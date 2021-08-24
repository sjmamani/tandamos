import 'package:flutter/material.dart';
import 'package:tandamos/screens/datos_cuenta/datos_cuenta_screen.dart';
import 'package:tandamos/screens/user_dashboard/user_dashboard_screen.dart';
import 'package:tandamos/util/colors.dart';

class TendamosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tandamos',
      theme: ThemeData(
        primaryColor: primaryColor,
      ),
      home: const DatosCuentaScreen(),
    );
  }
}
