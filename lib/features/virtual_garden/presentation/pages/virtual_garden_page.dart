import 'package:eco_hero_mobile/common/util/back_with_text.dart';
import 'package:eco_hero_mobile/features/virtual_garden/data/models/virtual_garden_model.dart';
import 'package:flutter/material.dart';

class VirtualGardenPage extends StatelessWidget {
  final VirtualGardenModel virtualGarden;

  const VirtualGardenPage({
    super.key,
    required this.virtualGarden,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            BackWithText(title: 'Wirtualny ogródek'),
            Column(
              children: [
                ...virtualGarden.plants.map(
                  (plant) => Text(plant.toString()),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
