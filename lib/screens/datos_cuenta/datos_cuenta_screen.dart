import 'package:flutter/material.dart';
import 'package:tandamos/screens/commons/custom_bottom_nav_bar.dart';
import 'package:tandamos/screens/commons/primary_custom_button.dart';

final Color bodyExpansionColor = Colors.indigo[100]!.withOpacity(0.3);

class DatosCuentaScreen extends StatefulWidget {
  const DatosCuentaScreen({Key? key}) : super(key: key);

  @override
  _DatosCuentaScreenState createState() => _DatosCuentaScreenState();
}

class _DatosCuentaScreenState extends State<DatosCuentaScreen> {
  bool isInformacionPersonalExpanded = false;
  bool isDatosBancariosExpanded = false;
  bool isMisTandasExpanded = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(25),
            child: ExpansionPanelList(
              dividerColor: Colors.black26,
              elevation: 0,
              expansionCallback: (int index, bool isExpanded) {
                setState(() {
                  switch (index) {
                    case 0:
                      isInformacionPersonalExpanded = !isExpanded;
                      break;
                    case 1:
                      isDatosBancariosExpanded = !isExpanded;
                      break;
                    case 2:
                      isMisTandasExpanded = !isExpanded;
                      break;
                    default:
                  }
                });
              },
              children: [
                ExpansionPanel(
                  isExpanded: isInformacionPersonalExpanded,
                  canTapOnHeader: true,
                  headerBuilder: (context, isExpanded) => CustomPanelHeader(
                    text: 'INFORMACIÓN PERSONAL',
                    isExpanded: isExpanded,
                  ),
                  body: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 25,
                    ),
                    width: double.infinity,
                    height: 200,
                    color: bodyExpansionColor,
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Icon(Icons.check_circle_outline),
                            SizedBox(width: 10),
                            Text('Jessica Ortiz'),
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(Icons.check_circle_outline),
                            SizedBox(width: 10),
                            Text('13 de octubre de 1986'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text('jessica@gmail.com'),
                            BotonEditar(onPressed: () {}),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text('+52 1234 5678 90'),
                            BotonEditar(onPressed: () {}),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                ExpansionPanel(
                  isExpanded: isDatosBancariosExpanded,
                  canTapOnHeader: true,
                  headerBuilder: (context, isExpanded) => CustomPanelHeader(
                    text: 'DATOS BANCARIOS',
                    isExpanded: isExpanded,
                  ),
                  body: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 25,
                    ),
                    width: double.infinity,
                    height: 200,
                    color: bodyExpansionColor,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Aquí depositamos tu tanda:'),
                        Row(
                          children: [
                            const Expanded(
                              child: Text(
                                'Cuenta 0 89765 36452 BBVA ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            BotonEditar(onPressed: () {}),
                          ],
                        ),
                        const SizedBox(height: 30),
                        Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: () {},
                            child: const Text(
                              '+ Añadir una cuenta',
                              style: TextStyle(
                                color: Colors.deepPurpleAccent,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ExpansionPanel(
                  isExpanded: isMisTandasExpanded,
                  canTapOnHeader: true,
                  headerBuilder: (context, isExpanded) => CustomPanelHeader(
                    text: 'MIS TANDAS',
                    isExpanded: isExpanded,
                  ),
                  body: SingleChildScrollView(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 40,
                      ),
                      color: Colors.indigo[50],
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          TandaItem(
                            periodo: '9 semanas. 1 may - 30 jul 2021',
                            concepto: 'Mercancía',
                            monto: 500,
                          ),
                          TandaItem(
                            periodo: '12 semanas. 1 may - 30 jul 2021',
                            concepto: 'Cumple Carlitos',
                            monto: 11000,
                          ),
                          TandaItem(
                            periodo: '8 semanas. 1 may - 30 jul 2021',
                            concepto: 'Zapatos',
                            monto: 2500,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const CustomBottomNavbar(selectedIndex: 2),
      ),
    );
  }
}

class TandaItem extends StatelessWidget {
  const TandaItem({
    Key? key,
    required this.monto,
    required this.concepto,
    required this.periodo,
  }) : super(key: key);

  final double monto;
  final String concepto;
  final String periodo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.indigoAccent[100],
                radius: 26,
                child: const Icon(
                  Icons.trending_up,
                  color: Colors.black,
                  size: 32,
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '\$${monto.toStringAsFixed(2)} mxn',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(concepto, style: const TextStyle(color: Colors.grey)),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(periodo),
        ],
      ),
    );
  }
}

class BotonEditar extends StatelessWidget {
  const BotonEditar({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 110,
      height: 60,
      child: PrimaryCustomButton(
        text: 'Editar',
        fontSize: 16,
        icon: const Icon(
          Icons.edit,
          color: Colors.white,
          size: 16,
        ),
        color: Colors.blueGrey[900]!,
        onPressed: onPressed,
      ),
    );
  }
}

class CustomPanelHeader extends StatelessWidget {
  const CustomPanelHeader({
    Key? key,
    required this.isExpanded,
    required this.text,
  }) : super(key: key);

  final bool isExpanded;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          letterSpacing: 1,
          fontWeight: isExpanded ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}
