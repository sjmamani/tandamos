import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tandamos/app/theme/app_theme.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/imgs/meta.svg'),
        k24Vertical,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            'Tú decides cuánto juntar y durante cuánto tiempo.',
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
