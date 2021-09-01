import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tandamos/app/modules/waiting_list/waiting_list_next_page.dart';
import 'package:tandamos/app/screens/commons/primary_custom_button.dart';
import 'package:tandamos/app/screens/commons/tandamos_logo.dart';
import 'package:tandamos/app/theme/app_theme.dart';

class WaitingListPage extends StatelessWidget {
  const WaitingListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TandamosLogo(),
                k32Vertical,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    'Nuestra comunidad se da la mano',
                    style: kH3,
                    textAlign: TextAlign.center,
                  ),
                ),
                k24Vertical,
                Text(
                  'Somos una comunidad protegida que funciona por invitación.',
                  style: kP,
                ),
                k16Vertical,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: SvgPicture.asset(
                    'assets/imgs/manos-chocando.svg',
                    // color: Colors.amber,
                    placeholderBuilder: (BuildContext context) =>
                        const Center(child: CircularProgressIndicator()),
                  ),
                ),
                k16Vertical,
                Text(
                  'En Tandamos, los amigos de nuestros usuarios tienen acceso prioritario.',
                  style: kP,
                ),
                k24Vertical,
                PrimaryCustomButton(
                  text: 'Continuar',
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) =>
                          const WaitingListNextPage(),
                    ),
                  ),
                  color: kC,
                  height: 60,
                  width: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
