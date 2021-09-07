import 'package:flutter/material.dart';
import 'package:tandamos/app/modules/onboarding/welcome_to_tandamos_page.dart';
import 'package:tandamos/app/theme/app_theme.dart';

class TendamosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tandamos',
      theme: ThemeData(
        primaryColor: kPrimary,
      ),
      home: const WelcomeToTandamosPage(),
    );
  }
}
