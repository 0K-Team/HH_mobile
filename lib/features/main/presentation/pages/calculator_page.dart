import 'package:eco_hero_mobile/common/util/color_util.dart';
import 'package:eco_hero_mobile/features/main/presentation/widgets/app_bar_widget.dart';
import 'package:eco_hero_mobile/features/main/presentation/widgets/navigation_bar_widget.dart';
import 'package:eco_hero_mobile/features/user/data/models/user_model.dart';
import 'package:eco_hero_mobile/features/user/presentation/blocs/current_user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBarWidget(),
      body: SafeArea(
        child: BlocBuilder<CurrentUserBloc, CurrentUserState>(
            builder: (context, state) {
          if (state is CurrentUserLoadSuccess) {
            UserModel user = state.user;
            return SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 1.h),
                  AppBarWidget(user: user),
                  SizedBox(height: 0.5.h),
                  Divider(color: shadow),
                  SizedBox(height: 2.5.h),
                  GestureDetector(
                    onTap: () => context.push('/eco_calculator/page'),
                    behavior: HitTestBehavior.opaque,
                    child: Container(
                      width: 92.w,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: accent,
                          width: 6.sp,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 1.h, horizontal: 1.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 40.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'EkoKalkulator',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18.sp,
                                  ),
                                ),
                                Text(
                                  'Zobacz jak możesz ograniczyć swój ślad węglowy.',
                                  style: TextStyle(
                                    height: 1.1,
                                    fontSize: 15.5.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SvgPicture.asset(
                            'assets/main-image.svg',
                            height: 11.h,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 2.5.h),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.w),
                      child: Text(
                        'Kalkulatory',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 1.h),
                  buildCalculator('assets/lightbulb.png',
                      'Kalkulator zużycia prądu w Twoim gospodarstwie'),
                  SizedBox(height: 1.h),
                  buildCalculator('assets/solarenergy.png',
                      'Kalkulator predyspozycji do fotowoltaiki'),
                  SizedBox(height: 1.h),
                  buildCalculator('assets/car.png',
                      'Kalkulator predyspozycji do auta elektrycznego'),
                  SizedBox(height: 1.h),
                  buildCalculator('assets/flower.png',
                      'Kalkulator predyspozycji do kwiateczków'),
                ],
              ),
            );
          }

          return Container();
        }),
      ),
    );
  }

  Container buildCalculator(String asset, String title) {
    return Container(
      width: 92.w,
      decoration: BoxDecoration(
        color: element,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.symmetric(vertical: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            asset,
            width: 25.w,
            height: 12.h,
            fit: BoxFit.fill,
          ),
          SizedBox(
            width: 55.w,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                height: 1.2,
                letterSpacing: 0.2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
