import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tandamos/app/theme/app_theme.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/imgs/chicos-celular.svg'),
        k16Vertical,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            'Junta dinero sin necesidad de grupos ni riesgo a que te queden mal.',
            textAlign: TextAlign.center,
            style: kH3.copyWith(
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        k80Vertical,
      ],
    );
  }
}
