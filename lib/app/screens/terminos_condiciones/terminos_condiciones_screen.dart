import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tandamos/app/screens/commons/primary_custom_button.dart';
import 'package:tandamos/app/screens/nueva_cuenta/widgets/custom_title.dart';
import 'package:url_launcher/url_launcher.dart';

class TerminosCondicionesScreen extends StatelessWidget {
  const TerminosCondicionesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 120, 30, 0),
        child: Column(
          children: [
            const CustomTitle(
              title: 'Tu seguridad es muy importante',
              icon: Icons.shield_outlined,
            ),
            const SizedBox(height: 25),
            const CustomCheckboxItem(
              text: 'He leído y acepto los ',
              linkeableText: 'Términos y condiciones',
              url: 'http://sftp.fibertel.com.ar/services/file-50MB.img',
            ),
            const CustomCheckboxItem(
              text: 'He leído y acepto el ',
              linkeableText: 'Aviso de privacidad',
              url: 'http://sftp.fibertel.com.ar/services/file-50MB.img',
            ),
            const SizedBox(height: 100),
            PrimaryCustomButton(
              text: 'Confirmar',
              onPressed: () {},
              color: Colors.blueGrey[900]!,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomCheckboxItem extends StatelessWidget {
  const CustomCheckboxItem({
    Key? key,
    this.linkeableText = '',
    required this.text,
    this.url = '',
  }) : super(key: key);

  final String text;
  final String linkeableText;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Checkbox(
            value: true,
            onChanged: (v) {},
            activeColor: Colors.deepPurpleAccent[100],
            checkColor: Colors.black45,
          ),
          Flexible(
            child: RichText(
              text: TextSpan(
                text: text,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                ),
                children: [
                  TextSpan(
                    text: linkeableText,
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => _launchURL(url),
                    style: const TextStyle(
                      color: Colors.deepPurpleAccent,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void _launchURL(String url) async =>
    await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
