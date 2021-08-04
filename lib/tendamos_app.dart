import 'package:flutter/material.dart';
import 'package:tandamos/screens/log_in/log_in_screen.dart';
import 'package:tandamos/util/colors.dart';

class TendamosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tandamos',
      theme: ThemeData(
        primaryColor: primaryColor,
      ),
      home: LogInScreen(),
    );
  }
}
