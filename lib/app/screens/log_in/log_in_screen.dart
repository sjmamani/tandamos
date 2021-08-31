import 'package:flutter/material.dart';
import 'package:tandamos/app/screens/commons/main_title.dart';
import 'package:tandamos/app/screens/commons/primary_custom_button.dart';
import 'package:tandamos/app/screens/commons/secondary_custom_button.dart';
import 'package:tandamos/app/screens/commons/tandamos_logo.dart';
import 'package:tandamos/app/screens/commons/custom_divider.dart';
import 'package:tandamos/app/screens/commons/custom_text_field.dart';
import 'package:tandamos/app/screens/log_in/widgets/forgot_password_text.dart';
import 'package:tandamos/app/screens/commons/switch_text.dart';
import 'package:tandamos/app/screens/sign_up/sign_up_screen.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const TandamosLogo(),
            SwitchText(
              text: '¿No tienes una cuenta?',
              linkedText: 'Regístrate',
              navigateTo: () => Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const SignUpScreen(),
                ),
              ),
            ),
            const MainTitle(title: 'Inicia Sesión'),
            const CustomTextField(
              labelText: 'Correo electrónico',
            ),
            const CustomTextField(
              labelText: 'Contraseña',
            ),
            const ForgotPasswordText(),
            PrimaryCustomButton(
              text: 'Ingresar',
              onPressed: () {},
            ),
            const CustomDivider(),
            SecondaryCustomButton(
              text: 'Google',
              onPressed: () {},
            ),
            SecondaryCustomButton(
              text: 'Facebook',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
