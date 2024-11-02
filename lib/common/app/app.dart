import 'package:eco_hero_mobile/common/injection/dependency_injection.dart';
import 'package:eco_hero_mobile/common/router/go_router.dart';
import 'package:eco_hero_mobile/common/util/color_util.dart';
import 'package:eco_hero_mobile/features/posts/presentation/blocs/posts_bloc.dart';
import 'package:eco_hero_mobile/features/user/presentation/blocs/current_user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class EcoHero extends StatelessWidget {
  const EcoHero({super.key});


  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: background,
      systemNavigationBarIconBrightness: Brightness.light,
      statusBarColor: background,
      statusBarIconBrightness: Brightness.light,
    ));

    return ResponsiveSizer(
      builder: (_, __, ___) {
        return MultiBlocProvider(
          providers: [
            BlocProvider<CurrentUserBloc>(create: (context) => get()),
            BlocProvider<PostsBloc>(create: (context) => get()),
          ],
          child: MaterialApp.router(
            routerConfig: router,
            debugShowCheckedModeBanner: false,
            title: 'EcoHero',
            theme: ThemeData(
              colorScheme: ColorScheme.light(
                secondary: accent,
                surface: background,
                onSurface: text,
              ),
              fontFamily: 'Raleway',
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
