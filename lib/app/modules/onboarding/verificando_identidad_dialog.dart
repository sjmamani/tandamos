import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tandamos/app/theme/app_theme.dart';

class VerificandoIdentidadDialog extends StatelessWidget {
  const VerificandoIdentidadDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 350,
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.black12, // replace with Colors.white
            borderRadius: BorderRadiusDirectional.circular(12),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.close))
                ],
              ),
              SvgPicture.asset(
                  'assets/imgs/tiempo.svg'), // replace with clock image
              k16Vertical,
              Text(
                'Estamos verificando tu identidad.\nEn breve podrás comenzar.',
                textAlign: TextAlign.center,
                style: kP.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
