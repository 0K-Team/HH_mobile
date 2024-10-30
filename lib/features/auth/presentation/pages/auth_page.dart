import 'package:eco_hero_mobile/common/injection/dependency_injection.dart';
import 'package:eco_hero_mobile/common/util/button.dart';
import 'package:eco_hero_mobile/common/util/color_util.dart';
import 'package:eco_hero_mobile/common/util/extensions/bloc_extension.dart';
import 'package:eco_hero_mobile/features/user/presentation/blocs/current_user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo.png',
                fit: BoxFit.cover,
                width: 60.w,
                height: 60.w,
              ),
              SizedBox(height: 4.h),
              PrimaryButtonWidget(
                onTap: () async {
                  await get<CurrentUserBloc>().addAndWait(CurrentUserLoaded('opkarol11@wp.pl'));
                  if (context.mounted) {
                    context.push('/');
                  }
                },
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/google.png',
                      color: element,
                      fit: BoxFit.cover,
                      height: 18.sp,
                      width: 18.sp,
                    ),
                    SizedBox(width: 1.5.w),
                    Text(
                      'Zaloguj się z Google',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 17.sp,
                        color: element,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 1.h),
              SecondaryButtonWidget(
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/meta.png',
                      color: Colors.white,
                      fit: BoxFit.cover,
                      height: 18.sp,
                      width: 18.sp,
                    ),
                    SizedBox(width: 1.5.w),
                    Text(
                      'Zaloguj się z Meta',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 17.sp,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 4.h),
              SizedBox(
                width: 90.w,
                child: Text(
                  'Rejestrując się, zgadzasz się na zasady przetwarzania danych osobowych.',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 17.sp,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
