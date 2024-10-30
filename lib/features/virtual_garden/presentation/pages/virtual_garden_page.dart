import 'package:eco_hero_mobile/common/util/back_with_text.dart';
import 'package:flutter/material.dart';

class VirtualGardenPage extends StatelessWidget {
  const VirtualGardenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            BackWithText(title: 'Wirtualny ogródek'),
          ],
        ),
      ),
    );
  }
}
