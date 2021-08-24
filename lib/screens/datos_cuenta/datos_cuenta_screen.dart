import 'package:flutter/material.dart';
import 'package:tandamos/screens/commons/custom_bottom_nav_bar.dart';
import 'package:tandamos/screens/commons/primary_custom_button.dart';

class Item {
  Item({
    required this.header,
    required this.body,
    this.isExpanded = false,
  });

  Widget header;
  Widget body;
  bool isExpanded;
}

List<Item> generatePanels() {
  return [
    Item(
      header: const CustomPanelHeader(
        text: 'INFORMACIÓN PERSONAL',
        isExpanded: false,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 25,
        ),
        width: double.infinity,
        height: 200,
        color: Colors.indigo[100],
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
    Item(
      header: const CustomPanelHeader(
        text: 'DATOS BANCARIOS',
        isExpanded: false,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 25,
        ),
        width: double.infinity,
        height: 200,
        color: Colors.indigo[100],
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
    Item(
      header: const CustomPanelHeader(
        text: 'MIS TANDAS',
        isExpanded: false,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 40,
        ),
        color: Colors.indigo[50],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TandaItem(),
            TandaItem(),
            TandaItem(),
          ],
        ),
      ),
    ),
  ];
}

class DatosCuentaScreen extends StatefulWidget {
  const DatosCuentaScreen({Key? key}) : super(key: key);

  @override
  _DatosCuentaScreenState createState() => _DatosCuentaScreenState();
}

class _DatosCuentaScreenState extends State<DatosCuentaScreen> {
  @override
  Widget build(BuildContext context) {
    final List<Item> _data = generatePanels();
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: ExpansionPanelList(
              dividerColor: Colors.black26,
              elevation: 0,
              expansionCallback: (int index, bool isExpanded) {
                setState(() {
                  _data[index].isExpanded = !isExpanded;
                });
              },
              children: _data
                  .map((Item item) => ExpansionPanel(
                      headerBuilder: (context, isExpanded) => item.header,
                      body: item.body,
                      isExpanded: item.isExpanded))
                  .toList(),
            ),
          ),
        ),
        bottomNavigationBar: const CustomBottomNavbar(),
      ),
    );
  }
}

class TandaItem extends StatelessWidget {
  const TandaItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.indigoAccent[100]!,
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
              children: const [
                Text(
                  '\$500.00 mxn',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text('Mercancia', style: TextStyle(color: Colors.grey)),
              ],
            ),
          ],
        ),
        const Text('9 semanas. 1 may - 30 jul 2021'),
      ],
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
    return Text(
      text,
      style: TextStyle(
        fontSize: 16,
        letterSpacing: 1,
        fontWeight: isExpanded ? FontWeight.bold : FontWeight.normal,
      ),
    );
  }
}