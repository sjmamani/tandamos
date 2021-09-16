import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tandamos/app/theme/app_theme.dart';

class AceptarInvitarHeader extends StatelessWidget {
  const AceptarInvitarHeader({
    Key? key,
    required this.selectedIndex,
  }) : super(key: key);

  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    final Color selectedColor = selectedIndex == 0 ? kYellow : kPurple;
    final String selectedText = selectedIndex == 0
        ? 'Amigos esperando que los aceptes:'
        : 'Invita amigos a Tandamos';
    return Container(
      width: double.infinity,
      color: selectedColor,
      child: Column(
        children: [
          Row(
            children: const [
              CustomItemButton(
                color: kYellow,
                svgPath: 'assets/icons/happy.svg',
                text: 'aceptar >',
              ),
              CustomItemButton(
                color: kPurple,
                svgPath: 'assets/icons/paper plane.svg',
                text: 'invitar >',
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Text(
              selectedText,
              style: kP.copyWith(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}

class CustomItemButton extends StatelessWidget {
  const CustomItemButton({
    Key? key,
    required this.color,
    required this.svgPath,
    required this.text,
  }) : super(key: key);

  final Color color;
  final String svgPath;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.only(bottom: 20),
          color: color,
          child: Column(
            children: [
              SvgPicture.asset(
                svgPath,
                height: 100,
              ),
              Text(
                text,
                style: kP,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
