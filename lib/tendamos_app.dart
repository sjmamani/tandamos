import 'package:flutter/material.dart';
import 'package:tandamos/app/modules/new_tanda/new_tanda_page.dart';
import 'package:tandamos/app/modules/onboarding/verificacion_identidad_page.dart';
import 'package:tandamos/app/modules/waiting_list/waiting_list_page.dart';
import 'package:tandamos/app/screens/user_dashboard/user_dashboard_screen.dart';
import 'package:tandamos/app/theme/app_theme.dart';

class TendamosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tandamos',
      theme: ThemeData(
        primaryColor: kPrimary,
      ),
      home: const UserDashboardScreen(),
    );
  }
}
