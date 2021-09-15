import 'package:flutter/material.dart';
import 'package:tandamos/app/theme/app_theme.dart';

class NoTandaHeader extends StatelessWidget {
  const NoTandaHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: 150,
      child: Row(
        children: const [TienesNuevaMeta(), ArmarUnitandaButton()],
      ),
    );
  }
}

class ArmarUnitandaButton extends StatelessWidget {
  const ArmarUnitandaButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {},
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          height: 120,
          decoration: BoxDecoration(
            color: kGreen,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.trending_up,
                color: Colors.white,
                size: 80,
              ),
              Text(
                'Armar unitanda',
                style: kP.copyWith(fontWeight: FontWeight.w400),
              ),
              k8Vertical
            ],
          ),
        ),
      ),
    );
  }
}

class TienesNuevaMeta extends StatelessWidget {
  const TienesNuevaMeta({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        '¿Tienes una nueva meta?',
        textAlign: TextAlign.center,
        style: kP.copyWith(
          decoration: TextDecoration.underline,
          decorationColor: kGreenLight,
          decorationThickness: 6,
        ),
      ),
    );
  }
}
