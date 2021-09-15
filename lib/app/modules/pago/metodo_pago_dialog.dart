import 'package:flutter/material.dart';
import 'package:tandamos/app/screens/commons/primary_custom_button.dart';
import 'package:tandamos/app/theme/app_theme.dart';

enum MetodosDePago { codi, deposito, debito }

class MetodoPagoDialog extends StatelessWidget {
  const MetodoPagoDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          margin: const EdgeInsets.symmetric(horizontal: 10),
          height: size.height * 0.8,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 1),
                blurRadius: 12,
                color: Colors.black.withOpacity(0.04),
              ),
              BoxShadow(
                offset: const Offset(0, 4),
                blurRadius: 8,
                color: Colors.black.withOpacity(0.08),
              ),
              BoxShadow(
                offset: const Offset(0, 3),
                blurRadius: 6,
                color: Colors.black.withOpacity(0.1),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Vas a pagar',
                  style:
                      kP.copyWith(fontSize: 20, fontWeight: FontWeight.w600)),
              k32Vertical,
              Center(
                child: Text('\$750 mxn',
                    style:
                        kP.copyWith(fontSize: 20, fontWeight: FontWeight.w300)),
              ),
              k32Vertical,
              const MetodosRadioButtons(),
              k16Vertical,
              PrimaryCustomButton(
                text: 'Pagar',
                onPressed: () {},
                color: kC,
                height: 60,
                width: 60,
              ),
              GestureDetector(
                onTap: () {},
                child: Center(
                  child: Text(
                    'Cancelar',
                    style: kP.copyWith(
                      color: kPrimaryMedium,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MetodosRadioButtons extends StatelessWidget {
  const MetodosRadioButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const MetodosDePago _metodoDePago = MetodosDePago.debito;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('MÉTODOS DE PAGO',
              style: kP.copyWith(fontWeight: FontWeight.w400)),
          k8Vertical,
          RadioListTile<MetodosDePago>(
            title: Text(
              'CODI',
              style: kP,
            ),
            activeColor: kPrimary,
            value: MetodosDePago.codi,
            groupValue: _metodoDePago,
            onChanged: (MetodosDePago? value) {},
          ),
          RadioListTile<MetodosDePago>(
            title: Text(
              'Déposito o transferencia electrónica',
              style: kP,
            ),
            activeColor: kPrimary,
            value: MetodosDePago.deposito,
            groupValue: _metodoDePago,
            onChanged: (MetodosDePago? value) {},
          ),
          RadioListTile<MetodosDePago>(
            title: Text(
              'Tarjeta de débito',
              style: kP,
            ),
            activeColor: kPrimary,
            value: MetodosDePago.debito,
            groupValue: _metodoDePago,
            onChanged: (MetodosDePago? value) {},
          ),
        ],
      ),
    );
  }
}
