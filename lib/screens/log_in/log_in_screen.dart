import 'package:flutter/material.dart';
import 'package:tandamos/screens/commons/main_title.dart';
import 'package:tandamos/screens/commons/primary_custom_button.dart';
import 'package:tandamos/screens/commons/secondary_custom_button.dart';
import 'package:tandamos/screens/commons/tandamos_logo.dart';
import 'package:tandamos/screens/commons/custom_divider.dart';
import 'package:tandamos/screens/commons/custom_text_field.dart';
import 'package:tandamos/screens/log_in/widgets/forgot_password_text.dart';
import 'package:tandamos/screens/commons/switch_text.dart';
import 'package:tandamos/screens/sign_up/sign_up_screen.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TandamosLogo(),
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
            MainTitle(title: 'Inicia Sesión'),
            CustomTextField(
              hintText: 'Correo electrónico',
            ),
            CustomTextField(
              hintText: 'Contraseña',
              obscureText: true,
            ),
            ForgotPasswordText(),
            PrimaryCustomButton(
              text: 'Ingresar',
            ),
            CustomDivider(),
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
