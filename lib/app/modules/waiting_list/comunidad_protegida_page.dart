import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tandamos/app/screens/commons/custom_fab_list.dart';
import 'package:tandamos/app/screens/commons/custom_floating_action_button.dart';
import 'package:tandamos/app/screens/commons/tandamos_logo.dart';
import 'package:tandamos/app/theme/app_theme.dart';

class ComunidadProtegidaPage extends StatelessWidget {
  const ComunidadProtegidaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const TandamosLogo(),
              k32Vertical,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    'assets/icons/lightbulb.svg',
                    color: kPrimaryMedium,
                  ),
                  k8Horizontal,
                  Flexible(
                    child: Text(
                      '¿Por qué somos una comunidad protegida?',
                      style: kH3.copyWith(
                        color: kPrimaryMedium,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              k32Vertical,
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                style: kP,
              ),
              k16Vertical,
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                style: kP,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: CustomFABList(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomFloatingActionButton(
            icon: Icons.chevron_left,
            text: 'Volver',
            onPressed: () => Navigator.pop(context),
          )
        ],
      ),
    ));
  }
}
