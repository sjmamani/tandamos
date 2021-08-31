import 'package:flutter/material.dart';
import 'package:tandamos/app/theme/app_theme.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.labelText = '',
    this.hintText = '',
  }) : super(key: key);

  final String labelText;
  final String hintText;

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
          hintText: hintText,
          labelText: labelText,
          labelStyle: const TextStyle(color: Colors.grey),
          filled: true,
          fillColor: kNLight,
          floatingLabelBehavior: FloatingLabelBehavior.always,
        ),
      ),
    );
  }
}
