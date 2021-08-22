import 'package:flutter/material.dart';
import 'package:tandamos/screens/commons/main_title.dart';
import 'package:tandamos/screens/commons/primary_custom_button.dart';
import 'package:tandamos/screens/commons/secondary_custom_button.dart';
import 'package:tandamos/screens/commons/switch_text.dart';
import 'package:tandamos/screens/commons/tandamos_logo.dart';
import 'package:tandamos/screens/log_in/log_in_screen.dart';
import 'package:tandamos/screens/commons/custom_divider.dart';
import 'package:tandamos/screens/commons/custom_text_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TandamosLogo(),
              SwitchText(
                text: '¿Ya tienes una cuenta?',
                linkedText: 'Inicia sesión',
                navigateTo: () => Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const LogInScreen(),
                  ),
                ),
              ),
              MainTitle(
                title: 'Crea una cuenta',
              ),
              CustomTextField(
                hintText: 'Nombre',
              ),
              CustomTextField(
                hintText: 'Correo electrónico',
              ),
              CustomTextField(
                hintText: 'Contraseña',
                obscureText: true,
              ),
              CustomTextField(
                hintText: 'Confirmar contraseña',
                obscureText: true,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 40,
                  left: 30,
                  right: 20,
                ),
                child: Text(
                  'Si tienes un código de invitación, introdúcelo',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              CustomTextField(
                hintText: 'Código de invitación',
              ),
              PrimaryCustomButton(
                text: 'Crear cuenta',
                onPressed: () {},
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
      ),
    );
  }
}
