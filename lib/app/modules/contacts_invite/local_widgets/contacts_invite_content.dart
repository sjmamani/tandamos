import 'package:flutter/material.dart';
import 'package:tandamos/app/screens/commons/primary_custom_button.dart';
import 'package:tandamos/app/theme/app_theme.dart';

class ContactsInviteContent extends StatelessWidget {
  const ContactsInviteContent({
    Key? key,
    required this.text1,
    required this.text2,
    required this.enviarInvitaciones,
    this.onPressed,
  }) : super(key: key);

  final String text1;
  final String text2;
  final bool enviarInvitaciones;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(25, 30, 25, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text1,
              style: kP.copyWith(fontWeight: FontWeight.w500),
            ),
            k16Vertical,
            Text(
              text2,
              style: kP.copyWith(fontWeight: FontWeight.w500),
            ),
            const Spacer(),
            PrimaryCustomButton(
              text: 'Enviar invitaciones',
              color: kC,
              height: 60,
              width: 40,
              onPressed: enviarInvitaciones ? onPressed : null,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
