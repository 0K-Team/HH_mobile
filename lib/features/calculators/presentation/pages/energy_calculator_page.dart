import 'package:eco_hero_mobile/common/util/back_with_text.dart';
import 'package:eco_hero_mobile/common/util/color_util.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class EnergyCalculatorPage extends StatefulWidget {
  const EnergyCalculatorPage({super.key});

  @override
  _EnergyCalculatorPageState createState() => _EnergyCalculatorPageState();
}

class _EnergyCalculatorPageState extends State<EnergyCalculatorPage> {
  final TextEditingController _powerController = TextEditingController();
  final TextEditingController _timeController = TextEditingController();
  double _energyConsumption = 0.0;

  void _calculateEnergyConsumption() {
    double power = double.tryParse(_powerController.text) ?? 0.0;
    double time = double.tryParse(_timeController.text) ?? 0.0;

    // Calculate energy consumption
    if (power > 0 && time > 0) {
      setState(() {
        _energyConsumption = power * time; // Energy consumption in kWh
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
              BackWithText(title: 'Kalkulator zużycia energii'),
              SizedBox(height: 2.5.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Column(
                  children: [
                    TextField(
                      controller: _powerController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Moc urządzenia (kW)',
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
                      controller: _timeController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Czas pracy (h)',
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
                      onPressed: _calculateEnergyConsumption,
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(accent),
                      ),
                      child: Text(
                        'Oblicz zużycie energii',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          color: element,
                        ),
                      ),
                    ),
                    SizedBox(height: 3.h),
                    if (_energyConsumption > 0)
                      Text(
                        'Zużycie energii: ${_energyConsumption.toStringAsFixed(2)} kWh',
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
