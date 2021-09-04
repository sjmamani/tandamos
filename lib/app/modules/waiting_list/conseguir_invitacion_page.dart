import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tandamos/app/modules/waiting_list/local_widgets/yellow_waiting_list_scaffold.dart';
import 'package:tandamos/app/screens/commons/primary_custom_button.dart';
import 'package:tandamos/app/screens/commons/tandamos_logo.dart';
import 'package:tandamos/app/theme/app_theme.dart';

import 'compartir_contactos_page.dart';

class ConseguirInvitacionPage extends StatelessWidget {
  const ConseguirInvitacionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TandamosLogo(),
        k16Vertical,
        Row(
          children: [
            SvgPicture.asset('assets/icons/happy.svg'),
            Expanded(
              child: Text(
                'Te ayudamos a conseguir una invitación',
                style: kH3.copyWith(fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
        k32Vertical,
        Text(
          'Tu probabilidad de entrar a Tandamos es más baja sin amigos que te inviten.',
          style: kP.copyWith(fontSize: 20),
        ),
        k32Vertical,
        Text(
          '¿Tienes amigos dentro?',
          style: kP.copyWith(fontSize: 20),
        ),
        k8Vertical,
        Row(
          children: [
            k24Horizontal,
            Expanded(
                child: PrimaryCustomButton(
              text: 'Sí',
              color: kPrimaryMedium,
              height: 40,
              fontSize: 16,
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) =>
                      const YellowWaitingListScaffold(
                    content: CompartirContactosPage(),
                  ),
                ),
              ),
            )),
            k24Horizontal,
            Expanded(
                child: PrimaryCustomButton(
              text: 'No sé',
              height: 40,
              color: kPrimaryMedium,
              fontSize: 16,
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) =>
                      const YellowWaitingListScaffold(
                    content: CompartirContactosPage(dontKnow: true),
                  ),
                ),
              ),
            )),
            k24Horizontal,
          ],
        )
      ],
    );
  }
}
