import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tandamos/app/screens/commons/primary_custom_button.dart';
import 'package:tandamos/app/screens/commons/tandamos_logo.dart';
import 'package:tandamos/app/screens/nueva_cuenta/widgets/custom_title.dart';
import 'package:tandamos/app/theme/app_theme.dart';

class VerificacionIdentidadPage extends StatelessWidget {
  const VerificacionIdentidadPage({Key? key}) : super(key: key);

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
                title: 'Verificación de identidad',
                icon: Icons.send_outlined,
              ),
              k24Vertical,
              Text(
                'Comenzaremos con el proceso para validar tu información personal.',
                style: kP,
              ),
              k8Vertical,
              Text(
                'Tendrás que completarlo todo de una sola vez.',
                style: kP,
              ),
              k16Vertical,
              Text(
                'Ten a la mano:',
                style: kP,
              ),
              const DocumentationList(),
              const ProtectedInformationLink(),
              PrimaryCustomButton(
                text: 'Continuar',
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

class ProtectedInformationLink extends StatelessWidget {
  const ProtectedInformationLink({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(50, 25, 50, 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SvgPicture.asset(
            'assets/icons/lightbulb.svg',
            color: kPrimaryMedium,
          ),
          k16Horizontal,
          Flexible(
            child: Text(
              '¿Cómo protegemos tu información?',
              style: kP.copyWith(
                color: kPrimaryMedium,
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DocumentationList extends StatelessWidget {
  const DocumentationList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 20,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              const Icon(
                Icons.description_outlined,
                size: 32,
                color: kN,
              ),
              k16Horizontal,
              Text(
                'INE o pasaporte',
                style: kP,
              ),
            ],
          ),
          k8Vertical,
          Row(
            children: [
              const Icon(
                Icons.house,
                size: 32,
                color: kN,
              ),
              k16Horizontal,
              Expanded(
                child: Text(
                  'Comprobante de domicilio (Ej. estado de cuenta o recibo de gas, luz, agua, etc).',
                  style: kP,
                ),
              ),
            ],
          ),
          k8Vertical,
          Row(
            children: [
              const Icon(
                Icons.payment_outlined,
                size: 32,
                color: kN,
              ),
              k16Horizontal,
              Text(
                'Datos cuenta bancaria',
                style: kP,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
