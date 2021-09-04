import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tandamos/app/modules/waiting_list/comunidad_protegida_page.dart';
import 'package:tandamos/app/screens/commons/tandamos_logo.dart';
import 'package:tandamos/app/theme/app_theme.dart';

class SeguimosBuscandoPage extends StatelessWidget {
  const SeguimosBuscandoPage({Key? key}) : super(key: key);

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
                'Seguimos buscando tu invitación',
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
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SvgPicture.asset(
              'assets/icons/lightbulb.svg',
              color: kPrimaryMedium,
            ),
            k8Horizontal,
            Flexible(
              child: GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) =>
                        const ComunidadProtegidaPage(),
                  ),
                ),
                child: Text(
                  '¿Por qué somos una comunidad protegida?',
                  style: kP.copyWith(
                    color: kPrimaryMedium,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
          ],
        ),
        k48Vertical,
        GestureDetector(
          onTap: () {}, // TODO
          child: Text(
            'Cerrar sesión',
            style: kP.copyWith(
              color: kPrimaryMedium,
              decoration: TextDecoration.underline,
            ),
          ),
        )
      ],
    );
  }
}
