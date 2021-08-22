import 'package:flutter/material.dart';
import 'package:tandamos/screens/commons/custom_divider.dart';
import 'package:tandamos/screens/commons/primary_custom_button.dart';

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 15,
        ),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(bottom: 25, top: 20),
                child: Text(
                  'ESTATUS DE TANDA',
                  style: TextStyle(
                      fontSize: 22,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w300),
                ),
              ),
            ),
            const EstatusTanda(
              cantMaxima: 11,
              cantPagados: 3,
              posicionEstrella: 11,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 25, bottom: 40),
              child: Text(
                'Quedan 11 pagos para recibir tu tanda',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            PrimaryCustomButton(
              text: 'Pagar',
              color: Colors.blueGrey[900]!,
              onPressed: () {},
            ),
            const CustomDivider(),
            PrimaryCustomButton(
              text: 'Otras opciones',
              color: Colors.blueGrey[900]!,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class EstatusTanda extends StatelessWidget {
  const EstatusTanda({
    Key? key,
    required this.cantMaxima,
    required this.cantPagados,
    required this.posicionEstrella,
  })  : assert(posicionEstrella < 0 || posicionEstrella >= cantMaxima,
            'La posición de la estrella debe ser mayor a 0 y menor a la cantidad máxima'),
        assert(cantPagados < cantMaxima,
            'La cantidad de pagos debe ser menor o igual a la cantidad máxima'),
        assert(
            cantPagados > 0, 'La cantidad de pagos debe ser mayor o igual a 0'),
        super(key: key);

  final int cantMaxima;
  final int cantPagados;
  final int posicionEstrella;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: List.generate(
        cantMaxima,
        (index) => Container(
          margin: const EdgeInsets.only(right: 5),
          color: index >= cantPagados ? Colors.white : Colors.blue,
          width: 25,
          height: 45,
          child: index == (posicionEstrella - 1)
              ? const Icon(Icons.star_border_outlined)
              : null,
        ),
      ),
    );
  }
}
