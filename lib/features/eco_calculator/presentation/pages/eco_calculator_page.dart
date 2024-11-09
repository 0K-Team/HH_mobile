import 'dart:developer';

import 'package:eco_hero_mobile/common/injection/dependency_injection.dart';
import 'package:eco_hero_mobile/common/util/back_with_text.dart';
import 'package:eco_hero_mobile/common/util/button.dart';
import 'package:eco_hero_mobile/features/eco_calculator/data/models/eco_calculator_model.dart';
import 'package:eco_hero_mobile/features/eco_calculator/data/repositories/eco_calculator_repository_impl.dart';
import 'package:eco_hero_mobile/features/eco_calculator/presentation/widgets/options_slider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class EcoCalculatorPage extends StatefulWidget {
  const EcoCalculatorPage({super.key});

  @override
  State<EcoCalculatorPage> createState() => _EcoCalculatorPageState();
}

class _EcoCalculatorPageState extends State<EcoCalculatorPage> {
  final EcoCalculatorProperties _properties = EcoCalculatorProperties();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              BackWithText(title: 'EkoKalkulator'),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2.5.h, horizontal: 4.w),
                child: Column(
                  children: [
                    // Transport
                    buildSection('Transport', excludeMargin: true,),
                    buildQuestion(
                      'Jak często korzystasz z samochodu?',
                      [
                        'Rzadko',
                        'Raz w tygodniu',
                        'Kilka razy w tygodniu',
                        'Codziennie'
                      ],
                      (option) => setState(() => _properties.carUsage = option),
                    ),
                    buildQuestion(
                      'Jaki rodzaj paliwa ma Twój samochód?',
                      ['Benzyna', 'Diesel', 'Elektryczny', 'Hybryda', 'Inny'],
                      (option) => setState(() => _properties.fuelType = option),
                    ),
                    buildQuestion(
                      'Ile kilometrów średnio pokonujesz samochodem w ciągu tygodnia?',
                      ['0-50 km', '51-150 km', '151-300 km', 'Powyżej 300 km'],
                      (option) => setState(() => _properties.weeklyKm = option),
                    ),
                    buildQuestion(
                      'Jak często podróżujesz samolotem?',
                      [
                        'Nigdy',
                        '1-2 razy w roku',
                        '3-5 razy w roku',
                        'Powyżej 5 razy w roku'
                      ],
                      (option) =>
                          setState(() => _properties.flightFrequency = option),
                    ),
                    buildQuestion(
                      'Czy używasz transportu publicznego (autobusy, pociągi)?',
                      [
                        'Nigdy',
                        'Rzadko',
                        'Kilka razy w tygodniu',
                        'Codziennie'
                      ],
                      (option) => setState(
                          () => _properties.publicTransportUsage = option),
                    ),
                    // Energy
                    buildSection('Energia'),
                    buildQuestion(
                      'Jakie źródło energii używasz w swoim domu?',
                      ['Węgiel', 'Gaz', 'Prąd z sieci', 'OZE'],
                      (option) =>
                          setState(() => _properties.energySource = option),
                    ),
                    buildQuestion(
                      'Jakie masz źródło ciepłej wody?',
                      ['Elektryczność', 'Gaz', 'Węgiel', 'OZE'],
                      (option) => setState(
                          () => _properties.waterHeatingSource = option),
                    ),
                    buildQuestion(
                      'Średnie miesięczne zużycie energii elektrycznej (kWh)?',
                      [
                        '0-100 kWh',
                        '101-200 kWh',
                        '201-300 kWh',
                        'Powyżej 300 kWh'
                      ],
                      (option) =>
                          setState(() => _properties.monthlyKWh = option),
                    ),
                    buildQuestion(
                      'Jak ocenisz efektywność energetyczną swojego domu?',
                      [
                        'Bardzo efektywny',
                        'Średnio efektywny',
                        'Niezbyt efektywny'
                      ],
                      (option) =>
                          setState(() => _properties.energyEfficiency = option),
                    ),
                    // Water
                    buildSection('Woda'),
                    buildQuestion(
                      'Jak długo średnio bierzesz prysznic?',
                      [
                        'Mniej niż 5 minut',
                        '5-10 minut',
                        '11-20 minut',
                        'Powyżej 20 minut'
                      ],
                      (option) =>
                          setState(() => _properties.showerTime = option),
                    ),
                    buildQuestion(
                      'Jak często kąpiesz się w wannie?',
                      [
                        'Codziennie',
                        'Kilka razy w tygodniu',
                        'Raz w tygodniu',
                        'Rzadko'
                      ],
                      (option) =>
                          setState(() => _properties.bathtubUsage = option),
                    ),
                    // Waste
                    buildSection('Odpady'),
                    buildQuestion(
                      'Czy segregujesz odpady?',
                      ['Tak', 'Częściowo', 'Nie'],
                      (option) =>
                          setState(() => _properties.wasteSegregation = option),
                    ),
                    buildQuestion(
                      'Ile jedzenia marnujesz średnio w ciągu tygodnia?',
                      ['0-500 g', '500 g-1 kg', '1-2 kg', 'Powyżej 2 kg'],
                      (option) =>
                          setState(() => _properties.foodWaste = option),
                    ),
                    buildQuestion(
                      'Czy używasz plastikowych opakowań?',
                      ['Często', 'Czasami', 'Rzadko', 'Nigdy'],
                      (option) =>
                          setState(() => _properties.plasticUsage = option),
                    ),
                    // Food
                    buildSection('Jedzenie'),
                    buildQuestion(
                      'Jak często jesz produkty mięsne?',
                      [
                        'Codziennie',
                        'Kilka razy w tygodniu',
                        'Raz w tygodniu',
                        'Rzadko',
                        'Nigdy'
                      ],
                      (option) =>
                          setState(() => _properties.meatConsumption = option),
                    ),
                    buildQuestion(
                      'Czy preferujesz produkty lokalne i sezonowe?',
                      ['Zawsze', 'Często', 'Rzadko', 'Nigdy'],
                      (option) => setState(
                          () => _properties.localFoodPreference = option),
                    ),
                    // Leisure
                    buildSection('Wypoczynek'),
                    buildQuestion(
                      'Ile godzin dziennie spędzasz oglądając filmy/seriale online?',
                      [
                        '0-1 godzinę',
                        '1-2 godziny',
                        '2-3 godziny',
                        'Powyżej 3 godzin'
                      ],
                      (option) =>
                          setState(() => _properties.movieWatchTime = option),
                    ),
                    buildQuestion(
                      'Ile razy w miesiącu kupujesz nowe ubrania?',
                      ['0-1 razy', '2-3 razy', '4-5 razy', 'Powyżej 5 razy'],
                      (option) {
                        setState(() => _properties.shoppingFrequency = option);
                      },
                    ),
                  ],
                ),
              ),
              if (_properties.isFullyFilled)
                PrimaryButtonWidget(
                  title: 'Zobacz wynik',
                  onTap: () async {
                    EcoCalculatorModel calculator = EcoCalculatorModel(
                      transport: EcoCalculatorModelTransport(
                        carUsage: _properties.carUsage!,
                        fuelType: _properties.fuelType!,
                        weeklyKm: _properties.weeklyKm!,
                        flightFrequency: _properties.flightFrequency!,
                        publicTransportUsage: _properties.publicTransportUsage!,
                      ),
                      energy: EcoCalculatorModelEnergy(
                        energySource: _properties.energySource!,
                        waterHeatingSource: _properties.waterHeatingSource!,
                        monthlyKWh: _properties.monthlyKWh!,
                        energyEfficiency: _properties.energyEfficiency!,
                      ),
                      water: EcoCalculatorModelWater(
                        showerTime: _properties.showerTime!,
                        bathtubUsage: _properties.bathtubUsage!,
                      ),
                      waste: EcoCalculatorModelWaste(
                        wasteSegregation: _properties.wasteSegregation!,
                        foodWaste: _properties.foodWaste!,
                        plasticUsage: _properties.plasticUsage!,
                      ),
                      food: EcoCalculatorModelFood(
                        meatConsumption: _properties.meatConsumption!,
                        localFoodPreference: _properties.localFoodPreference!,
                      ),
                      leisure: EcoCalculatorModelLeisure(
                        movieWatchTime: _properties.movieWatchTime!,
                        shoppingFrequency: _properties.shoppingFrequency!,
                      ),
                    );

                    (await get<EcoCalculatorRepositoryImpl>()
                            .fetchResult(calculator))
                        .fold(
                      (result) {
                        if (context.mounted) {
                          context.replace('/eco_calculator_result/page',
                              extra: result);
                        }
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

  buildSection(String title, {bool excludeMargin = false}) {
    return Column(
      children: [
        if (!excludeMargin) SizedBox(height: 3.h),
        Text(
          title,
          style: TextStyle(
            fontSize: 19.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }

  buildQuestion(String title, List<String> titles, ValueChanged<int> onChange) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(height: 0.5.h),
        OptionsSlider(
          options: titles,
          onChange: onChange,
        ),
      ],
    );
  }
}

class EcoCalculatorProperties {
  int? carUsage;
  int? fuelType;
  int? weeklyKm;
  int? flightFrequency;
  int? publicTransportUsage;
  int? energySource;
  int? waterHeatingSource;
  int? monthlyKWh;
  int? energyEfficiency;
  int? showerTime;
  int? bathtubUsage;
  int? wasteSegregation;
  int? foodWaste;
  int? plasticUsage;
  int? meatConsumption;
  int? localFoodPreference;
  int? movieWatchTime;
  int? shoppingFrequency;

  bool get isFullyFilled =>
      carUsage != null &&
      fuelType != null &&
      weeklyKm != null &&
      flightFrequency != null &&
      publicTransportUsage != null &&
      energySource != null &&
      waterHeatingSource != null &&
      monthlyKWh != null &&
      energyEfficiency != null &&
      showerTime != null &&
      bathtubUsage != null &&
      wasteSegregation != null &&
      foodWaste != null &&
      plasticUsage != null &&
      meatConsumption != null &&
      localFoodPreference != null &&
      movieWatchTime != null &&
      shoppingFrequency != null;
}
