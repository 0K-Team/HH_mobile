import 'package:eco_hero_mobile/common/router/go_router.dart';
import 'package:eco_hero_mobile/common/util/color_util.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class EcoHero extends StatelessWidget {
  const EcoHero({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (_, __, ___) {
        return MaterialApp.router(
          routerConfig: router,
          debugShowCheckedModeBanner: false,
          title: 'EcoHero',
          theme: ThemeData(
            colorScheme: ColorScheme.light(
              primary: primary,
              secondary: secondary,
              surface: background,
              onSurface: text,
            ),
            fontFamily: 'Raleway',
            appBarTheme: AppBarTheme(
              backgroundColor: background,
            ),
          ),
        );
      },
    );
  }
}
