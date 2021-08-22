import 'package:flutter/material.dart';
import 'package:tandamos/screens/commons/custom_floating_action_button.dart';
import 'package:tandamos/screens/nueva_cuenta/validacion_cuenta_screen.dart';
import 'package:tandamos/screens/nueva_cuenta/widgets/custom_title.dart';

class NuevaCuentaScreen extends StatelessWidget {
  const NuevaCuentaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 120, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            CustomTitle(
              title: 'Añadir cuenta',
              icon: Icons.send_outlined,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Text(
                'Introduce los datos de tu nueva cuenta:',
                style: TextStyle(fontSize: 16),
              ),
            ),
            CustomTextField(labelText: 'Número de cuenta'),
            CustomTextField(labelText: 'Banco'),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Text(
                'No puedes cambiar tu cuenta el día en el que depositamos tu tanda.',
                textAlign: TextAlign.end,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: CustomFloatingActionButton(
        onPressed: () => Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => const ValidacionCuentaScreen(),
            )),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.labelText = '',
  }) : super(key: key);

  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          alignLabelWithHint: true,
          hintText: labelText,
          labelText: labelText,
          labelStyle: const TextStyle(color: Colors.black45),
          filled: true,
          floatingLabelBehavior: FloatingLabelBehavior.always,
        ),
      ),
    );
  }
}
