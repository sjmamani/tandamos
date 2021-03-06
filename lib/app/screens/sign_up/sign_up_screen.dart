import 'package:flutter/material.dart';
import 'package:tandamos/app/screens/commons/main_title.dart';
import 'package:tandamos/app/screens/commons/primary_custom_button.dart';
import 'package:tandamos/app/screens/commons/secondary_custom_button.dart';
import 'package:tandamos/app/screens/commons/switch_text.dart';
import 'package:tandamos/app/screens/commons/tandamos_logo.dart';
import 'package:tandamos/app/screens/log_in/log_in_screen.dart';
import 'package:tandamos/app/screens/commons/custom_divider.dart';
import 'package:tandamos/app/screens/commons/custom_text_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const TandamosLogo(),
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
              const MainTitle(
                title: 'Crea una cuenta',
              ),
              const CustomTextField(
                labelText: 'Nombre',
              ),
              const CustomTextField(
                labelText: 'Correo electrónico',
              ),
              const CustomTextField(
                labelText: 'Contraseña',
              ),
              const CustomTextField(
                labelText: 'Confirmar contraseña',
              ),
              const Padding(
                padding: EdgeInsets.only(
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
              const CustomTextField(
                labelText: 'Código de invitación',
              ),
              PrimaryCustomButton(
                text: 'Crear cuenta',
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
      ),
    );
  }
}
