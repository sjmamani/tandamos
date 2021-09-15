import 'package:flutter/material.dart';
import 'package:tandamos/app/screens/commons/tandamos_logo.dart';

PreferredSize tandamosAppBar() {
  return const PreferredSize(
    preferredSize: Size.fromHeight(40),
    child: DecoratedBox(
      decoration: BoxDecoration(color: Colors.white),
      child: Padding(
        padding: EdgeInsets.only(left: 20),
        child: TandamosLogo(),
      ),
    ),
  );
}
