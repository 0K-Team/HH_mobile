import 'package:eco_hero_mobile/common/util/back_with_text.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          BackWithText(title: 'Powiadomienia'),
        ],
      ),),
    );
  }
}
