import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tandamos/app/theme/app_theme.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/tandamos.png', width: size.width * 0.7),
        k8Vertical,
        SvgPicture.asset('assets/imgs/calendario.svg'),
        k8Vertical,
        Text('La tanda que se ajusta a ti', style: kH3),
        k80Vertical,
      ],
    );
  }
}
