import 'package:flutter/material.dart';

class AdelantoPago extends StatelessWidget {
  const AdelantoPago({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30),
      padding: const EdgeInsets.all(15),
      color: Colors.indigo[100]?.withOpacity(0.3),
      child: Row(
        children: [
          Flexible(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  '¿Quieres adelantar?',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  'Cuando adelantas un pago, la fecha en la que recibes tu tanda también se adelanta.',
                  style: TextStyle(
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 2,
            fit: FlexFit.tight,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      splashRadius: 20,
                      iconSize: 32,
                      icon: const Icon(Icons.expand_less),
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      '0',
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(width: 5),
                    IconButton(
                      onPressed: () {},
                      splashRadius: 20,
                      iconSize: 32,
                      icon: const Icon(Icons.expand_more),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  'ADELANTAR',
                  style: TextStyle(color: Colors.black38),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
