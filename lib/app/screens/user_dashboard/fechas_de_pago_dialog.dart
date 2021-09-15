import 'package:flutter/material.dart';
import 'package:tandamos/app/theme/app_theme.dart';

class FechasDePagoDialog extends StatelessWidget {
  const FechasDePagoDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: kGreenLight,
            borderRadius: BorderRadiusDirectional.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'FECHAS DE PAGO',
                    style: kP.copyWith(
                      letterSpacing: 1,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.close))
                ],
              ),
              k24Vertical,
              const FechasDePagoGrid()
            ],
          ),
        ),
      ),
    );
  }
}

class FechasDePagoGrid extends StatelessWidget {
  const FechasDePagoGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 29,
      runSpacing: 32,
      children: [
        FechaDePago(
          backgroundColor: kGreen,
          date: '12 AGO',
          child: Text(
            '1',
            style: kP.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        FechaDePago(
          backgroundColor: kGreen,
          date: '12 AGO',
          child: Text(
            '1',
            style: kP.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        FechaDePago(
          backgroundColor: Colors.white,
          date: '12 AGO',
          child: Text(
            '1',
            style: kP.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        FechaDePago(
          backgroundColor: kC.withOpacity(0.15),
          date: '12 AGO',
          child: Text(
            '1',
            style: kP.copyWith(
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
        FechaDePago(
          backgroundColor: kC.withOpacity(0.15),
          date: '12 AGO',
          child: Text(
            '1',
            style: kP.copyWith(
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
        FechaDePago(
          backgroundColor: kC.withOpacity(0.15),
          date: '12 AGO',
          child: Text(
            '1',
            style: kP.copyWith(
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
        FechaDePago(
          backgroundColor: kC.withOpacity(0.15),
          date: '12 AGO',
          child: Text(
            '1',
            style: kP.copyWith(
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
        FechaDePago(
          backgroundColor: kC.withOpacity(0.15),
          date: '12 AGO',
          child: Text(
            '1',
            style: kP.copyWith(
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
        FechaDePago(
          backgroundColor: kC.withOpacity(0.15),
          date: '12 AGO',
          child: Text(
            '1',
            style: kP.copyWith(
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
        FechaDePago(
          backgroundColor: kC.withOpacity(0.15),
          date: '12 AGO',
          child: Text(
            '1',
            style: kP.copyWith(
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
        FechaDePago(
          backgroundColor: kC.withOpacity(0.15),
          date: '12 AGO',
          child: Text(
            '1',
            style: kP.copyWith(
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
        FechaDePago(
          backgroundColor: kC.withOpacity(0.15),
          date: '12 AGO',
          child: const Icon(
            Icons.star_border,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

class FechaDePago extends StatelessWidget {
  const FechaDePago({
    Key? key,
    required this.child,
    required this.date,
    required this.backgroundColor,
  }) : super(key: key);

  final Widget child;
  final String date;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 55,
          width: 55,
          color: backgroundColor,
          child: Center(
            child: child,
          ),
        ),
        Text(date)
      ],
    );
  }
}
