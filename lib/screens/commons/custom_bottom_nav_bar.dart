import 'package:flutter/material.dart';

class CustomBottomNavbar extends StatelessWidget {
  const CustomBottomNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.deepPurple[900],
      child: SizedBox(
        height: 85,
        child: Row(
          children: const [
            CustomItemNavbar(
              icon: Icons.notifications,
              label: 'TANDA',
              isSelected: true,
            ),
            CustomItemNavbar(
              icon: Icons.favorite,
              label: 'AMIGOS',
            ),
            CustomItemNavbar(
              icon: Icons.settings,
              label: 'CUENTA',
            ),
            CustomItemNavbar(
              icon: Icons.chat_bubble,
              label: 'AYUDA',
            ),
          ],
        ),
      ),
    );
  }
}

class CustomItemNavbar extends StatelessWidget {
  const CustomItemNavbar({
    Key? key,
    required this.icon,
    this.label = '',
    this.isSelected = false,
  }) : super(key: key);

  final IconData icon;
  final String label;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? Colors.deepPurpleAccent[400] : Colors.transparent,
          border: isSelected
              ? const Border(
                  bottom: BorderSide(
                    color: Colors.white,
                    width: 4.0,
                  ),
                )
              : null,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: isSelected ? Colors.white : Colors.white24,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              label,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.white24,
                letterSpacing: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
