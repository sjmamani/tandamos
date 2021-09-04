import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tandamos/app/modules/waiting_list/conseguir_invitacion_page.dart';
import 'package:tandamos/app/screens/commons/custom_divider.dart';
import 'package:tandamos/app/screens/commons/custom_text_field.dart';
import 'package:tandamos/app/screens/commons/primary_custom_button.dart';
import 'package:tandamos/app/screens/commons/tandamos_logo.dart';
import 'package:tandamos/app/theme/app_theme.dart';

import 'local_widgets/yellow_waiting_list_scaffold.dart';

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
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/imgs/dedo.svg',
                    width: 80,
                  ),
                  k16Horizontal,
                  Expanded(
                    child: Text(
                      'Sé parte de nuestra comunidad',
                      style: kH3.copyWith(fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
              k16Vertical,
              Text(
                '¿Ya tienes invitación?',
                style: kP.copyWith(fontSize: 20),
              ),
              k16Vertical,
              const CustomTextField(
                hintText: 'Introduce tu código de invitación',
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
                text: 'No tengo invitación',
                color: kC,
                height: 60,
                width: 20,
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) =>
                        const YellowWaitingListScaffold(
                      content: ConseguirInvitacionPage(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
