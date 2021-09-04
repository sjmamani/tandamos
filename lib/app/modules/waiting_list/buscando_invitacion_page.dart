import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tandamos/app/modules/waiting_list/seguimos_buscando_page.dart';
import 'package:tandamos/app/screens/commons/primary_custom_button.dart';
import 'package:tandamos/app/screens/commons/tandamos_logo.dart';
import 'package:tandamos/app/theme/app_theme.dart';

import 'local_widgets/yellow_waiting_list_scaffold.dart';

class BuscandoInvitacionPage extends StatelessWidget {
  const BuscandoInvitacionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TandamosLogo(),
        k16Vertical,
        Row(
          children: [
            SvgPicture.asset(
              'assets/imgs/tiempo.svg',
              height: 100,
            ),
            k16Horizontal,
            Expanded(
              child: Text(
                '¡Ya estamos buscando tu invitación!',
                textAlign: TextAlign.center,
                style: kH3.copyWith(fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
        k24Vertical,
        Text(
          'Este proceso puede ser inmediato o puede tardar algunos días.',
          style: kP.copyWith(fontSize: 20),
        ),
        k24Vertical,
        Text(
          'Te notificaremos en cuanto puedas entrar a Tandamos.',
          style: kP.copyWith(fontSize: 20),
        ),
        k48Vertical,
        Row(
          children: [
            Flexible(
              flex: 2,
              child: SvgPicture.asset(
                'assets/imgs/guiño.svg',
                width: 50,
              ),
            ),
            k16Horizontal,
            Flexible(
              flex: 5,
              child: Text(
                'Mientras esperas, prueba armar tu primera tanda:',
                style: kP.copyWith(fontWeight: FontWeight.w400),
              ),
            )
          ],
        ),
        PrimaryCustomButton(
          text: 'Probar',
          fontSize: 16,
          width: 50,
          height: 40,
          color: kPrimaryMedium,
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) =>
                  const YellowWaitingListScaffold(
                content: SeguimosBuscandoPage(),
              ),
            ),
          ),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {}, // TODO
          child: Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              height: 60,
              child: Text(
                'Cerrar sesión',
                style: kP.copyWith(
                  color: kPrimaryMedium,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
