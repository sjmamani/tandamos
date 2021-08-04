import 'package:flutter/material.dart';
import 'package:tandamos/util/colors.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 1,
      backgroundColor: primaryColor,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white.withOpacity(0.45),
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'TANDA',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'AMIGOS',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'CUENTA',
        ),
      ],
    );
  }
}
