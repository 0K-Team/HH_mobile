import 'package:eco_hero_mobile/common/util/back_with_text.dart';
import 'package:eco_hero_mobile/common/util/color_util.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ElectricCarCalculatorPage extends StatefulWidget {
  const ElectricCarCalculatorPage({super.key});

  @override
  ElectricCarCalculatorPageState createState() =>
      ElectricCarCalculatorPageState();
}

class ElectricCarCalculatorPageState extends State<ElectricCarCalculatorPage> {
  final TextEditingController _energyController = TextEditingController();
  final TextEditingController _emissionFactorController =
      TextEditingController();
  double _co2Emission = 0.0;

  void _calculateCO2Emission() {
    double energy = double.tryParse(_energyController.text) ?? 0.0;
    double emissionFactor =
        double.tryParse(_emissionFactorController.text) ?? 0.0;

    if (energy > 0 && emissionFactor > 0) {
      setState(() {
        _co2Emission = energy * emissionFactor;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              BackWithText(
                  title: 'Kalkulator wpływu ładowania auta elektrycznego'),
              SizedBox(height: 2.5.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Column(
                  children: [
                    TextField(
                      controller: _energyController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Zużycie energii (kWh)',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 4.sp,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 2.h),
                    TextField(
                      controller: _emissionFactorController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Współczynnik emisji CO₂ (kg CO₂/kWh)',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 4.sp,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 2.h),
                    ElevatedButton(
                      onPressed: _calculateCO2Emission,
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(accent),
                      ),
                      child: Text(
                        'Oblicz emisję CO₂',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          color: element,
                        ),
                      ),
                    ),
                    SizedBox(height: 3.h),
                    if (_co2Emission > 0)
                      Text(
                        'Emisja CO₂: ${_co2Emission.toStringAsFixed(2)} kg CO₂',
                        style: TextStyle(
                          fontSize: 18.sp,
                        ),
                        textAlign: TextAlign.center,
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
