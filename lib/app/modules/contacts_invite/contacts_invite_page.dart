import 'package:flutter/material.dart';
import 'package:tandamos/app/screens/commons/custom_bottom_nav_bar.dart';
import 'package:tandamos/app/screens/commons/tandamos_app_bar.dart';
import 'package:tandamos/app/screens/nueva_cuenta/confirmacion_screen.dart';
import 'package:tandamos/app/theme/app_theme.dart';

import 'local_widgets/aceptar_invitar_header.dart';
import 'local_widgets/contacts_invite_content.dart';

class ContactsInvitePage extends StatelessWidget {
  const ContactsInvitePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: tandamosAppBar(),
        backgroundColor: Colors.white, // Reemplazar por el color correcto
        body: Column(
          children: [
            const AceptarInvitarHeader(selectedIndex: 1),
            ContactsInviteContent(
              text1: 'Envía hasta 5 invitaciones',
              text2:
                  'Sólo los primeros 5 que usen sus códigos de invitación serán válidos.',
              enviarInvitaciones: true,
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const ConfirmacionScreen(
                      title: '¡Invitaciones enviadas!',
                      message: 'La comunidad Tandamos no para de crecer.'),
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: const CustomBottomNavbar(selectedIndex: 1),
      ),
    );
  }
}
