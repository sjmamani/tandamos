import 'package:flutter/material.dart';
import 'package:tandamos/app/theme/app_theme.dart';

import 'app/modules/onboarding/onboarding_fallido_page.dart';

class TendamosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tandamos',
      theme: ThemeData(
        primaryColor: kPrimary,
      ),
      home: const OnboardingFallidoPage(),
    );
  }
}
