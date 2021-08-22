import 'package:flutter/material.dart';
import 'package:tandamos/screens/commons/custom_floating_action_button.dart';
import 'package:tandamos/screens/nueva_cuenta/confirmacion_screen.dart';
import 'package:tandamos/screens/nueva_cuenta/widgets/custom_title.dart';

class ValidacionCuentaScreen extends StatelessWidget {
  const ValidacionCuentaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 120, 30, 0),
        child: Column(
          children: const [
            CustomTitle(
              title: 'Estamos validando tu cuenta',
              icon: Icons.send_outlined,
            ),
            MensajeActivacion(),
          ],
        ),
      ),
      floatingActionButton: CustomFloatingActionButton(
        onPressed: () => Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => const ConfirmacionScreen(
                title: '¡Listo!',
                message: 'Cuenta añadida',
                showFAB: true,
              ),
            )),
      ),
    );
  }
}

class MensajeActivacion extends StatelessWidget {
  const MensajeActivacion({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Row(
        children: [
          const Flexible(
            child: Padding(
              padding: EdgeInsets.only(left: 10, right: 40),
              child: Icon(Icons.check_circle_outline),
            ),
          ),
          Flexible(
            flex: 2,
            child: RichText(
              text: const TextSpan(
                text: 'Realiza una transferencia de ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
                children: [
                  TextSpan(
                    text: '\$1.00 mxn ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: 'para activar tu nueva cuenta'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
