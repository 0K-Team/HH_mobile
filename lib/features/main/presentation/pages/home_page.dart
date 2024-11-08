import 'package:eco_hero_mobile/common/injection/dependency_injection.dart';
import 'package:eco_hero_mobile/common/util/color_util.dart';
import 'package:eco_hero_mobile/features/blogs/presentation/widgets/blogs_carousel_widget.dart';
import 'package:eco_hero_mobile/features/daily_challenge/data/repositories/user_daily_challenge_repository_impl.dart';
import 'package:eco_hero_mobile/features/events/presentation/widgets/events_list_widget.dart';
import 'package:eco_hero_mobile/features/main/presentation/widgets/button_widget.dart';
import 'package:eco_hero_mobile/features/main/presentation/widgets/element_widget.dart';
import 'package:eco_hero_mobile/features/main/presentation/widgets/app_bar_widget.dart';
import 'package:eco_hero_mobile/features/main/presentation/widgets/navigation_bar_widget.dart';
import 'package:eco_hero_mobile/features/products/presentation/widgets/product_list_widget.dart';
import 'package:eco_hero_mobile/features/user/data/models/user_model.dart';
import 'package:eco_hero_mobile/features/user/presentation/blocs/current_user_bloc.dart';
import 'package:eco_hero_mobile/features/virtual_garden/data/repositories/virtual_garden_repository_impl.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                  FutureBuilder(
                      future: get<UserDailyChallengeRepositoryImpl>()
                          .fetchUserDailyChallenge(),
                      builder: (context, snapshot) {
                        if (snapshot.data == null) {
                          return CircularProgressIndicator();
                        }

                        return snapshot.data!.fold(
                          (userDailyChallenge) => ElementWidget(
                            onTap: () => context.push('/daily_challenge/page',
                                extra: userDailyChallenge),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 40.w,
                                      child: Text(
                                        userDailyChallenge.title,
                                        style: TextStyle(
                                          fontSize: 23.sp,
                                          height: 0.8,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 1.h),
                                    Text(
                                        'Posegreguj ${userDailyChallenge.amount} odpadów'),
                                    SizedBox(height: 0.5.h),
                                    Image.asset('assets/avatars.png'),
                                  ],
                                ),
                                Image.asset('assets/recycle_bin.png'),
                              ],
                            ),
                          ),
                          (right) => Text('Error'),
                        );
                      }),
                  SizedBox(height: 1.5.h),
                  ElementWidget(
                    onTap: () {
                      get<VirtualGardenRepositoryImpl>()
                          .fetchVirtualGarden(user.id)
                          .fold((virtualGarden) {
                        context.push('/virtual_garden/page',
                            extra: virtualGarden);
                      }, (exception) {});
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset('assets/plant.png'),
                          SizedBox(width: 5.w),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Twój wirtualny ogródek',
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(height: 0.5.h),
                                Text(
                                  'Zasadziłeś już 32 drzewa.\nŁącznie zasadzono 192 drzew.',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    height: 1.2,
                                  ),
                                ),
                                SizedBox(height: 1.h),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: ButtonWidget(text: 'Przejdź'),
                                ),
                              ],
                            ),
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
                        'Blogi i porady',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 0.5.h),
                  Padding(
                    padding: EdgeInsets.only(left: 4.w),
                    child: SizedBox(
                      height: 12.h,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: BlogsCarouselWidget(),
                      ),
                    ),
                  ),
                  SizedBox(height: 2.5.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Pyły w Twojej lokalizacji',
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10.sp, horizontal: 12.sp),
                              decoration: BoxDecoration(
                                color: element,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 4.sp,
                                ),
                              ),
                              child: Text('PM1'),
                            ),
                            SizedBox(width: 2.w),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10.sp, horizontal: 12.sp),
                              decoration: BoxDecoration(
                                color: element,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 4.sp,
                                ),
                              ),
                              child: Text('PM2.5'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 0.5.h),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 4.w),
                    padding:
                        EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.w),
                    decoration: BoxDecoration(
                      color: element,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/location.png'),
                                Text(
                                  'Kraków, Wieliczka',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 17.sp,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              '12:55',
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 0.5.h),
                        Text(
                            'PM1 to zanieczyszczenia powietrza o średnicy 1 mikrometr (jedna tysięczna milimetra) lub mniej.'),
                      ],
                    ),
                  ),
                  SizedBox(height: 2.5.h),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.w),
                      child: Text(
                        'EkoWydarzenia',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 1.h),
                  EventsListWidget(),
                  SizedBox(height: 2.5.h),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.w),
                      child: Text(
                        'EkoProdukty',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  ProductListWidget(),
                  SizedBox(height: 1.h),
                ],
              ),
            );
          }

          return Container();
        }),
      ),
    );
  }
}
