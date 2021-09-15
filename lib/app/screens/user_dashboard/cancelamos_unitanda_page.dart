import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tandamos/app/screens/commons/custom_bottom_nav_bar.dart';
import 'package:tandamos/app/screens/commons/tandamos_app_bar.dart';
import 'package:tandamos/app/theme/app_theme.dart';

class CancelamosUnitandaPage extends StatelessWidget {
  const CancelamosUnitandaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: tandamosAppBar(),
        backgroundColor: kPurple,
        body: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.close),
              ),
            ),
            Text('Cancelamos tu unitanda', style: kH3),
            k16Vertical,
            SvgPicture.asset('assets/imgs/tiempo.svg'),
            k24Vertical,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  Text(
                    'No pagaste a tiempo. En tu siguiente tanda sólo puedes elegir el último número.',
                    style: kP.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  k16Vertical,
                  Text(
                      'Haremos un reembolso de todos tus pagos menos comisiones. Depositaremos \$1,500 a tu cuenta en 24 hrs.',
                      style: kP.copyWith(
                        fontWeight: FontWeight.w500,
                      )),
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: const CustomBottomNavbar(),
      ),
    );
  }
}
