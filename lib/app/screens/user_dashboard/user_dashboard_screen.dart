import 'package:flutter/material.dart';
import 'package:tandamos/app/screens/commons/custom_bottom_nav_bar.dart';
import 'package:tandamos/app/screens/user_dashboard/widgets/custom_header.dart';
import 'package:tandamos/app/screens/user_dashboard/widgets/main_content.dart';

class UserDashboardScreen extends StatelessWidget {
  const UserDashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.indigoAccent[100],
        bottomNavigationBar: const CustomBottomNavbar(),
        body: Column(
          children: const [
            CustomHeader(),
            MainContent(),
          ],
        ),
      ),
    );
  }
}
