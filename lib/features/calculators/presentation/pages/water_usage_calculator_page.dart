import 'package:eco_hero_mobile/common/util/back_with_text.dart';
import 'package:eco_hero_mobile/common/util/color_util.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class WaterUsageCalculatorPage extends StatefulWidget {
  const WaterUsageCalculatorPage({super.key});

  @override
  WaterUsageCalculatorPageState createState() =>
      WaterUsageCalculatorPageState();
}

class WaterUsageCalculatorPageState extends State<WaterUsageCalculatorPage> {
  final TextEditingController _peopleController = TextEditingController();
  final TextEditingController _usagePerPersonController =
      TextEditingController();
  final TextEditingController _daysController = TextEditingController();
  double _totalWaterUsage = 0.0;

  void _calculateWaterUsage() {
    int people = int.tryParse(_peopleController.text) ?? 0;
    double usagePerPerson =
        double.tryParse(_usagePerPersonController.text) ?? 0.0;
    int days = int.tryParse(_daysController.text) ?? 0;

    // Calculate total water usage
    if (people > 0 && usagePerPerson > 0 && days > 0) {
      setState(() {
        _totalWaterUsage =
            people * usagePerPerson * days; // Total water usage in liters
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
              BackWithText(title: 'Kalkulator zużycia wody'),
              SizedBox(height: 2.5.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Column(
                  children: [
                    TextField(
                      controller: _peopleController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Liczba osób',
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
                      controller: _usagePerPersonController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Zużycie wody na osobę (L/dzień)',
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
                      controller: _daysController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Liczba dni',
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
                      onPressed: _calculateWaterUsage,
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(accent),
                      ),
                      child: Text('Oblicz zużycie wody',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          color: element,
                        ),),
                    ),
                    SizedBox(height: 3.h),
                    if (_totalWaterUsage > 0)
                      Text(
                        'Całkowite zużycie wody: ${_totalWaterUsage.toStringAsFixed(2)} L',
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
