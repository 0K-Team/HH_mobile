import 'package:eco_hero_mobile/common/util/back_with_text.dart';
import 'package:eco_hero_mobile/common/util/color_util.dart';
import 'package:eco_hero_mobile/features/eco_calculator/data/models/eco_calculator_result_model.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class EcoCalculatorResultPage extends StatelessWidget {
  final EcoCalculatorResultModel result;

  const EcoCalculatorResultPage({
    super.key,
    required this.result,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              BackWithText(title: 'Wynik EkoKalkulatora'),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 0.5.h,
                  horizontal: 4.w,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Rekomendacja AI:',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18.sp,
                      ),
                    ),
                    Text(
                      result.aiSuggestion,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 1.h),
                    buildSpecificEmission('Auta', Icons.car_crash,
                        result.specificEmission.car.toStringAsFixed(2)),
                    buildSpecificEmission('Samoloty', Icons.airplane_ticket,
                        result.specificEmission.plane.toStringAsFixed(2)),
                    buildSpecificEmission('Publiczny transport',
                        Icons.public,
                        result.specificEmission.publicTransport
                            .toStringAsFixed(2)),
                    buildSpecificEmission('Energia', Icons.energy_savings_leaf,
                        result.specificEmission.energy.toStringAsFixed(2)),
                    buildSpecificEmission('Woda', Icons.water_drop,
                        result.specificEmission.water.toStringAsFixed(2)),
                    buildSpecificEmission('Śmieci', Icons.track_changes_sharp,
                        result.specificEmission.garbage.toStringAsFixed(2)),
                    buildSpecificEmission('Jedzenie', Icons.fastfood,
                        result.specificEmission.food.toStringAsFixed(2)),
                    buildSpecificEmission('Elekronika', Icons.watch,
                        result.specificEmission.watchTime.toStringAsFixed(2)),
                    buildSpecificEmission('Zakupy', Icons.shopping_bag,
                        result.specificEmission.shopping.toStringAsFixed(2)),
                    SizedBox(height: 1.h),
                    Text('Łączna emisja: ${result.totalEmissionWeek.toStringAsFixed(2)} kg CO2/tydzień', style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 17.sp,
                    ),),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  buildSpecificEmission(String type, IconData icon, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0.5.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: accent,
            size: 22.sp,
          ),
          SizedBox(width: 2.w),
          Text(
            '$type:',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16.sp,
            ),
          ),
          SizedBox(width: 1.w),
          Text(
            '$value kg CO2/tydzień',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16.sp,
            ),
          ),
        ],
      ),
    );
  }
}
