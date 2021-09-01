import 'package:flutter/material.dart';
import 'package:tandamos/app/screens/commons/primary_custom_button.dart';
import 'package:tandamos/app/screens/commons/tandamos_logo.dart';
import 'package:tandamos/app/screens/nueva_cuenta/widgets/custom_title.dart';
import 'package:tandamos/app/theme/app_theme.dart';

class VerificacionCelularPage extends StatelessWidget {
  const VerificacionCelularPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TandamosLogo(),
              k32Vertical,
              const CustomTitle(
                title: 'Verificación de celular',
                icon: Icons.send_outlined,
              ),
              k16Vertical,
              Text(
                'Para continuar, es necesario que validemos tu número celular.',
                style: kP,
              ),
              k32Vertical,
              PrimaryCustomButton(
                text: 'Intentar de nuevo',
                onPressed: () {},
                color: kC,
                height: 60,
                width: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
