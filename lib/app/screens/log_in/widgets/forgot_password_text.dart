import 'package:flutter/material.dart';

import '../../../util/colors.dart';

class ForgotPasswordText extends StatelessWidget {
  const ForgotPasswordText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        vertical: 20,
      ),
      child: Text(
        '¿Olvidaste tu contraseña?',
        style: TextStyle(
          color: primaryColor,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
