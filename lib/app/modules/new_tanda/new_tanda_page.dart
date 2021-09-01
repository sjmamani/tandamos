import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tandamos/app/screens/commons/custom_floating_action_button.dart';
import 'package:tandamos/app/screens/commons/custom_text_field.dart';
import 'package:tandamos/app/screens/commons/tandamos_logo.dart';
import 'package:tandamos/app/theme/app_theme.dart';

class NewTandaPage extends StatelessWidget {
  const NewTandaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TandamosLogo(),
              k32Vertical,
              Text(
                'Arranca una nueva meta',
                style: kH3,
              ),
              k24Vertical,
              Text(
                '¿Cómo se llama tu tanda?',
                style: kP,
              ),
              const CustomTextField(
                labelText: 'Nombre de tanda',
                hintText: 'Ej. Refrigerador',
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: SvgPicture.asset(
                    'assets/imgs/manos.svg',
                    // color: Colors.amber,
                    placeholderBuilder: (BuildContext context) =>
                        const Center(child: CircularProgressIndicator()),
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: CustomFloatingActionButton(onPressed: () {}),
      ),
    );
  }
}
