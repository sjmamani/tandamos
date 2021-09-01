import 'package:flutter/material.dart';
import 'package:tandamos/app/screens/commons/custom_divider.dart';
import 'package:tandamos/app/screens/commons/custom_text_field.dart';
import 'package:tandamos/app/screens/commons/primary_custom_button.dart';
import 'package:tandamos/app/screens/commons/tandamos_logo.dart';
import 'package:tandamos/app/theme/app_theme.dart';

class WaitingListNextPage extends StatelessWidget {
  const WaitingListNextPage({Key? key}) : super(key: key);

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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  'Sé parte de nuestra comunidad',
                  style: kH3,
                  textAlign: TextAlign.center,
                ),
              ),
              k24Vertical,
              const TienesCodigoInvitacion(),
              k16Vertical,
              Text(
                'Un amigo te lo envió o nosotros te lo compartimos:',
                style: kP,
              ),
              k16Vertical,
              const CustomTextField(
                hintText: 'Código de invitación',
              ),
              k16Vertical,
              PrimaryCustomButton(
                text: 'Sí, confirmar',
                onPressed: () {},
                color: kC,
                height: 60,
                width: 20,
              ),
              const CustomDivider(),
              PrimaryCustomButton(
                text: 'No, ir a la lista de espera',
                onPressed: () {},
                color: kC,
                height: 60,
                width: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TienesCodigoInvitacion extends StatelessWidget {
  const TienesCodigoInvitacion({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Row(
        children: [
          const Placeholder(
            fallbackHeight: 50.0,
            fallbackWidth: 100.0,
          ),
          k8Horizontal,
          Expanded(child: Text('¿Tienes código de invitación?', style: kP)),
        ],
      ),
    );
  }
}
