import 'package:flutter/material.dart';
import 'package:tandamos/app/screens/commons/custom_bottom_nav_bar.dart';
import 'package:tandamos/app/screens/commons/tandamos_app_bar.dart';
import 'package:tandamos/app/theme/app_theme.dart';

import 'local_widgets/no_tanda_header.dart';

class NoTandaScreen extends StatelessWidget {
  const NoTandaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: tandamosAppBar(),
        backgroundColor: kBlueLight,
        bottomNavigationBar: const CustomBottomNavbar(),
        body: Column(
          children: [
            const NoTandaHeader(),
            Expanded(
              child: Center(
                child: Text(
                  'Sin tandas',
                  style: kH3,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
