import 'package:flutter/material.dart';
import 'package:tandamos/app/modules/new_intro/new_intro_page.dart';
import 'package:tandamos/app/theme/app_theme.dart';

class TendamosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tandamos',
      theme: ThemeData(
        primaryColor: kPrimary,
      ),
      home: const NewIntroPage(),
    );
  }
}
