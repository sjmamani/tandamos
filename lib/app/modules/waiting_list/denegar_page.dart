import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tandamos/app/screens/commons/secondary_custom_button.dart';
import 'package:tandamos/app/screens/commons/tandamos_logo.dart';
import 'package:tandamos/app/theme/app_theme.dart';

import 'buscando_invitacion_page.dart';
import 'local_widgets/yellow_waiting_list_scaffold.dart';

class DenegarPage extends StatelessWidget {
  const DenegarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TandamosLogo(),
        Center(
          child: SvgPicture.asset(
            'assets/imgs/celular.svg',
            height: 180,
          ),
        ),
        k24Vertical,
        Text(
          'Tu posibilidad de entrar es 25 veces más alta si compartes tus contactos ;)',
          style: kP.copyWith(fontSize: 20),
        ),
        k24Vertical,
        Text(
          '¿Seguro no quieres compartir?',
          style: kP.copyWith(fontSize: 20),
        ),
        k24Vertical,
        SecondaryCustomButton(
          text: 'Sí, quiero compartir',
          width: 50,
          height: 40,
          fontSize: 16,
          onPressed: () {}, // TODO
        ),
        GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) =>
                  const YellowWaitingListScaffold(
                content: BuscandoInvitacionPage(),
              ),
            ),
          ),
          child: Center(
            child: Text(
              'No, gracias',
              style: kP.copyWith(
                color: kPrimaryMedium,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        )
      ],
    );
  }
}
