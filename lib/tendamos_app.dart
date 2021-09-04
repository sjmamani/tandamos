import 'package:flutter/material.dart';
import 'package:tandamos/app/modules/waiting_list/conseguir_invitacion_page.dart';
import 'package:tandamos/app/modules/waiting_list/local_widgets/yellow_waiting_list_scaffold.dart';
import 'package:tandamos/app/theme/app_theme.dart';

class TendamosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tandamos',
      theme: ThemeData(
        primaryColor: kPrimary,
      ),
      home: const YellowWaitingListScaffold(content: ConseguirInvitacionPage()),
    );
  }
}
