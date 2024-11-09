import 'dart:developer';

import 'package:eco_hero_mobile/common/injection/dependency_injection.dart';
import 'package:eco_hero_mobile/common/util/back_with_text.dart';
import 'package:eco_hero_mobile/common/util/button.dart';
import 'package:eco_hero_mobile/features/eco_calculator/data/models/eco_calculator_model.dart';
import 'package:eco_hero_mobile/features/eco_calculator/data/repositories/eco_calculator_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class EcoCalculatorPage extends StatelessWidget {
  const EcoCalculatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              BackWithText(title: 'EkoKalkulator'),
              SizedBox(height: 2.5.h),
              PrimaryButtonWidget(
                title: 'Test send',
                onTap: () async {
                  EcoCalculatorModel calculator = EcoCalculatorModel(
                    transport: EcoCalculatorModelTransport(
                      carUsage: 0,
                      fuelType: 0,
                      weeklyKm: 0,
                      flightFrequency: 0,
                      publicTransportUsage: 0,
                    ),
                    energy: EcoCalculatorModelEnergy(
                      energySource: 0,
                      waterHeatingSource: 0,
                      monthlyKWh: 0,
                      energyEfficiency: 0,
                    ),
                    water: EcoCalculatorModelWater(
                      showerTime: 0,
                      bathtubUsage: 0,
                    ),
                    waste: EcoCalculatorModelWaste(
                      wasteSegregation: 0,
                      foodWaste: 0,
                      plasticUsage: 0,
                    ),
                    food: EcoCalculatorModelFood(
                      meatConsumption: 0,
                      localFoodPreference: 0,
                    ),
                    leisure: EcoCalculatorModelLeisure(
                      movieWatchTime: 0,
                      shoppingFrequency: 0,
                    ),
                  );

                  (await get<EcoCalculatorRepositoryImpl>()
                          .fetchResult(calculator))
                      .fold(
                    (result) {
                      log('Result: $result}');
                    },
                    (exception) {
                      log('Exception: $exception');
                    },
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
