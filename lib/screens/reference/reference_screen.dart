import 'package:flutter/material.dart';
import 'package:tandamos/screens/commons/custom_bottom_nav_bar.dart';
import 'package:tandamos/screens/commons/custom_text_field.dart';
import 'package:tandamos/screens/commons/tandamos_logo.dart';
import 'package:tandamos/screens/reference/widgets/banner_recommend_us.dart';
import 'package:tandamos/screens/reference/widgets/friend_item.dart';

class ReferenceScreen extends StatelessWidget {
  const ReferenceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomBottomNavbar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              TandamosLogo(),
              Padding(
                padding: EdgeInsets.only(
                  top: 40,
                  left: 30,
                  right: 20,
                ),
                child: Text(
                  'Recomiéndanos a alguien como tú',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              BannerRecommendUs(),
              Padding(
                padding: EdgeInsets.only(
                  top: 10,
                  left: 30,
                  right: 20,
                ),
                child: Text(
                  'Queremos que nuestra comunidad crezca',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 40,
                  left: 30,
                ),
                child: Text(
                  '3 DE TUS AMIGOS ESPERAN',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 30,
                  bottom: 10,
                ),
                child: Text(
                  '¿Los apruebas para unirse a Tandamos?',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              FriendsToJoin(),
              Padding(
                padding: EdgeInsets.only(
                  top: 40,
                  left: 30,
                ),
                child: Text(
                  '¿Hay alguien de tus amigos y familiares a quien le serviría Tandamos para juntar el dinero que necesitan?',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 20,
                  left: 30,
                ),
                child: Text(
                  '¡Recomiéndalos!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              CustomTextField(hintText: 'Celular amigo 1'),
              CustomTextField(hintText: 'Celular amigo 2'),
              CustomTextField(hintText: 'Celular amigo 3'),
            ],
          ),
        ),
      ),
    );
  }
}

class FriendsToJoin extends StatelessWidget {
  const FriendsToJoin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        FriendItem(
          name: 'Carmen',
        ),
        FriendItem(
          name: 'Juan',
        ),
        FriendItem(
          name: 'Diego',
        ),
      ],
    );
  }
}
