import 'package:flutter/material.dart';
import 'package:tandamos/app/modules/onboarding/verificando_identidad_dialog.dart';
import 'package:tandamos/app/screens/no_tanda/no_tanda_screen.dart';
import 'package:tandamos/app/theme/app_theme.dart';

class TandamosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tandamos',
      theme: ThemeData(
        primaryColor: kPrimary,
      ),
      home: const VerificandoIdentidadDialog(),
    );
  }
}
