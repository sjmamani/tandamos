import 'package:flutter/material.dart';

class ResumenPago extends StatelessWidget {
  const ResumenPago({
    Key? key,
    required this.pagoSemanal,
    this.adelanto = 0,
  }) : super(key: key);

  final double pagoSemanal;
  final double adelanto;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Pago semanal',
              textAlign: TextAlign.end,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            const SizedBox(width: 20),
            Text('--\$ ${pagoSemanal.toStringAsFixed(0)}'),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Adelanto',
              textAlign: TextAlign.end,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            const SizedBox(width: 20),
            Text('--\$ ${adelanto.toStringAsFixed(0)}'),
          ],
        ),
        const SizedBox(height: 10),
        Container(
          color: Colors.black,
          width: 200,
          height: 1,
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Total',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 22,
              ),
            ),
            SizedBox(width: 20),
            Text(
              '\$250 mxn',
              style: TextStyle(
                fontSize: 22,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
