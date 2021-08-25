import 'package:flutter/material.dart';
import 'package:tandamos/screens/commons/custom_floating_action_button.dart';
import 'package:tandamos/screens/pago/widgets/adelanto_pago.dart';
import 'package:tandamos/screens/pago/widgets/pago_semanal.dart';
import 'package:tandamos/screens/pago/widgets/resumen_pago.dart';
import 'package:tandamos/screens/user_dashboard/widgets/main_content.dart';

class PagoScreen extends StatelessWidget {
  const PagoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const PagoSemanal(monto: 250),
              EstatusTanda(
                cantMaxima: 11,
                cantPagados: 1,
                posicionEstrella: 11,
                cajasColor: Colors.grey[300]!,
              ),
              const AdelantoPago(),
              const ResumenPago(pagoSemanal: 250),
              const Botones(),
            ],
          ),
        ),
      ),
    );
  }
}

class Botones extends StatelessWidget {
  const Botones({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomFloatingActionButton(
            onPressed: () {},
            icon: Icons.chevron_left,
            text: 'volver',
          ),
          CustomFloatingActionButton(onPressed: () {})
        ],
      ),
    );
  }
}
