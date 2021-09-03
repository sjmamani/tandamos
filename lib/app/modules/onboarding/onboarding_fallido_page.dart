import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tandamos/app/screens/commons/custom_bottom_nav_bar.dart';
import 'package:tandamos/app/screens/commons/tandamos_logo.dart';
import 'package:tandamos/app/theme/app_theme.dart';

class OnboardingFallidoPage extends StatelessWidget {
  const OnboardingFallidoPage({Key? key}) : super(key: key);

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
            Text(
              'Trabajamos en dar lo mejor a nuestra comunidad',
              textAlign: TextAlign.center,
              style: kH3.copyWith(fontWeight: FontWeight.w400),
            ),
            Center(
                child: SvgPicture.asset(
              'assets/imgs/grupo.svg',
              height: 300,
            )),
            Text(
              'Agradecemos tu interés.',
              style: kP.copyWith(fontWeight: FontWeight.bold),
            ),
            k32Vertical,
            Text(
              'Por el momento no pudimos validar tus datos. Nos pondremos en contacto contigo en el futuro.',
              style: kP,
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavbar(),
    ));
  }
}
