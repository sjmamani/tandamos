import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tandamos/app/screens/commons/primary_custom_button.dart';
import 'package:tandamos/app/screens/commons/tandamos_logo.dart';
import 'package:tandamos/app/theme/app_theme.dart';

class WelcomeToTandamosPage extends StatelessWidget {
  const WelcomeToTandamosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: tandamosAppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              k48Vertical,
              Text(
                '¡Bienvenid@ a Tandamos!',
                style: kH3,
              ),
              k32Vertical,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Text(
                  'Verificaremos tu identidad y te notificaremos si hay algún problema.',
                  textAlign: TextAlign.center,
                  style: kP.copyWith(fontWeight: FontWeight.w400),
                ),
              ),
              k8Vertical,
              SvgPicture.asset('assets/imgs/confetti.svg'),
              k32Vertical,
              PrimaryCustomButton(
                text: 'Continuar',
                color: kC,
                width: 50,
                height: 60,
                fontSize: 18,
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }

  PreferredSize tandamosAppBar() {
    return const PreferredSize(
      preferredSize: Size.fromHeight(40),
      child: Padding(
        padding: EdgeInsets.only(left: 20),
        child: TandamosLogo(),
      ),
    );
  }
}
