import 'package:eco_hero_mobile/common/util/back_with_text.dart';
import 'package:eco_hero_mobile/common/util/color_util.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PhotovoltaicsCalculatorPage extends StatefulWidget {
  const PhotovoltaicsCalculatorPage({super.key});

  @override
  PhotovoltaicsCalculatorPageState createState() =>
      PhotovoltaicsCalculatorPageState();
}

class PhotovoltaicsCalculatorPageState
    extends State<PhotovoltaicsCalculatorPage> {
  final TextEditingController _powerController = TextEditingController();
  final TextEditingController _sunshineController = TextEditingController();
  double _savings = 0.0;

  void _calculateSavings() {
    double power = double.tryParse(_powerController.text) ?? 0.0;
    double sunshine = double.tryParse(_sunshineController.text) ?? 0.0;

    if (power > 0 && sunshine > 0) {
      setState(() {
        _savings = power * sunshine * 365;
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
                  title: 'Kalkulator oszczędności energii z fotowoltaiki'),
              SizedBox(height: 2.5.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Column(
                  children: [
                    TextField(
                      controller: _powerController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Moc instalacji (kW)',
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
                      controller: _sunshineController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText:
                            'Średnia liczba godzin nasłonecznienia dziennie (h)',
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
                      onPressed: _calculateSavings,
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(accent),
                      ),
                      child: Text(
                        'Oblicz oszczędności',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          color: element,
                        ),
                      ),
                    ),
                    SizedBox(height: 3.h),
                    if (_savings > 0)
                      Text(
                        'Roczna produkcja energii: ${_savings.toStringAsFixed(2)} kWh',
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
