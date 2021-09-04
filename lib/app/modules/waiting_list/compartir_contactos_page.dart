import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tandamos/app/screens/commons/primary_custom_button.dart';
import 'package:tandamos/app/screens/commons/tandamos_logo.dart';
import 'package:tandamos/app/theme/app_theme.dart';

import 'buscando_invitacion_page.dart';
import 'local_widgets/yellow_waiting_list_scaffold.dart';

class CompartirContactosPage extends StatelessWidget {
  const CompartirContactosPage({
    Key? key,
    this.dontKnow = false,
  }) : super(key: key);

  final bool dontKnow;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TandamosLogo(),
        SvgPicture.asset(
          'assets/imgs/celular.svg',
          height: 180,
        ),
        k24Vertical,
        if (dontKnow)
          Column(
            children: [
              Text(
                'Quizás tienes amigos en Tandamos y no lo sabes.',
                style: kP.copyWith(fontSize: 20),
              ),
              k32Vertical,
            ],
          ),
        Text(
          'Compártenos tus contactos para checar si están dentro y avisarles que te dejen entrar.',
          style: kP.copyWith(fontSize: 20),
        ),
        k24Vertical,
        PrimaryCustomButton(
          text: 'Continuar',
          color: kPrimaryMedium,
          width: 50,
          height: 40,
          fontSize: 16,
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) =>
                  const YellowWaitingListScaffold(
                content: BuscandoInvitacionPage(),
              ),
            ),
          ),
        )
      ],
    );
  }
}
