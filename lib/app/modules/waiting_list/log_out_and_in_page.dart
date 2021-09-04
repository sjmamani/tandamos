import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tandamos/app/screens/commons/custom_divider.dart';
import 'package:tandamos/app/screens/commons/custom_text_field.dart';
import 'package:tandamos/app/screens/commons/primary_custom_button.dart';
import 'package:tandamos/app/screens/commons/tandamos_logo.dart';
import 'package:tandamos/app/theme/app_theme.dart';

class LogOutAndInPage extends StatelessWidget {
  const LogOutAndInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
        k8Vertical,
        Text(
          '¿Ya tienes invitación?',
          style: kP.copyWith(fontSize: 20),
        ),
        k8Vertical,
        const CustomTextField(
          hintText: 'Introduce tu código de invitación',
        ),
        PrimaryCustomButton(
          text: 'Entrar',
          color: kPrimaryMedium,
          fontSize: 16,
          width: 50,
          height: 40,
          onPressed: () {}, // TODO
        ),
        const CustomDivider(),
        Row(
          children: [
            SvgPicture.asset(
              'assets/imgs/tiempo.svg',
              height: 100,
            ),
            k16Horizontal,
            Expanded(
              child: Text(
                '¿No tienes invitación? Seguimos buscándote una.',
                style: kH3.copyWith(fontWeight: FontWeight.w500, fontSize: 20),
              ),
            )
          ],
        ),
        k16Vertical,
        Text(
          'Este proceso puede ser inmediato o puede tardar algunos días.',
          style: kP.copyWith(fontSize: 20),
        ),
        k16Vertical,
        Text(
          'Te notificaremos en cuanto puedas entrar a Tandamos.',
          style: kP.copyWith(fontSize: 20),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {}, // TODO
          child: Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              height: 30,
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
