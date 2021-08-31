import 'package:flutter/material.dart';

class PagoSemanal extends StatelessWidget {
  const PagoSemanal({
    Key? key,
    required this.monto,
  }) : super(key: key);

  final double monto;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: RichText(
        text: TextSpan(
          text: 'Pago semanal ',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 20,
          ),
          children: [
            TextSpan(
              text: '\$${monto.toStringAsFixed(0)} mxn',
              style: const TextStyle(fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}
