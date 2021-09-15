import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tandamos/app/screens/commons/custom_bottom_nav_bar.dart';
import 'package:tandamos/app/screens/commons/primary_custom_button.dart';
import 'package:tandamos/app/screens/commons/tandamos_app_bar.dart';
import 'package:tandamos/app/theme/app_theme.dart';

class NecesitasAyudaPage extends StatelessWidget {
  const NecesitasAyudaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: tandamosAppBar(),
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '¿Necesitas ayuda?',
                style: kH3.copyWith(fontWeight: FontWeight.w400),
              ),
              SvgPicture.asset('assets/imgs/ayuda.svg'),
              PrimaryCustomButton(
                text: 'Contáctanos',
                onPressed: () {},
                color: kC,
                height: 60,
                width: 50,
              ),
            ],
          ),
        ),
        bottomNavigationBar: const CustomBottomNavbar(selectedIndex: 3),
      ),
    );
  }
}
