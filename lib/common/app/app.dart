import 'package:eco_hero_mobile/common/router/go_router.dart';
import 'package:eco_hero_mobile/common/util/color_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class EcoHero extends StatelessWidget {
  const EcoHero({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (_, __, ___) {
        return MultiBlocProvider(
          providers: [
            //fixme impl
            // BlocProvider(create: (context) => get<ServerBloc>()),
            // BlocProvider(create: (context) => get<UserBloc>()),
          ],
          child: MaterialApp.router(
            routerConfig: router,
            debugShowCheckedModeBanner: false,
            title: 'GameOn',
            theme: ThemeData(
              colorScheme: ColorScheme.light(
                primary: accent,
                secondary: secondary,
                surface: background,
                onSurface: text,
              ),
              fontFamily: 'Lexend', //fixme impl
              appBarTheme: AppBarTheme(
                backgroundColor: background,
              ),
            ),
          ),
        );
      },
    );
  }
}
