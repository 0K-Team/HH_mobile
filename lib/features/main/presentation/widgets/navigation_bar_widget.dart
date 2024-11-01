import 'package:eco_hero_mobile/common/injection/dependency_injection.dart';
import 'package:eco_hero_mobile/common/util/color_util.dart';
import 'package:eco_hero_mobile/features/main/presentation/navigation_page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NavigationBarWidget extends StatelessWidget {
  const NavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      color: background,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Divider(color: shadow),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              createNavigationElement(
                  context, 'Home', 'assets/home.svg', 1, '/'),
              createNavigationElement(
                  context, 'Community', 'assets/socials.svg', 5, '/socials/page'),
              createNavigationElement(
                  context, 'Maps', 'assets/maps.svg', 4, '/maps/page'),
              createNavigationElement(
                  context, 'Education', 'assets/play.svg', 2, '/play/page'),
              createNavigationElement(context, 'Calculator',
                  'assets/calculator.svg', 3, '/calculator/page'),
            ],
          ),
          // trick to make the spaces at the top and bottom of navigation bar the same height
          Divider(color: background),
        ],
      ),
    );
  }

  createNavigationElement(BuildContext context, String title, String asset,
      int index, String path) {
    NavigationPageCubit navigationPage = get<NavigationPageCubit>();
    if (navigationPage.state is! NavigationPageLoadSuccess) {
      return Container();
    }

    NavigationPageLoadSuccess state =
        navigationPage.state as NavigationPageLoadSuccess;
    Color color = state.pageIndex == index ? accent : Colors.white;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        get<NavigationPageCubit>().changePage(index);
        context.go(path);
      },
      child: SizedBox(
        width: 20.w,
        child: Column(
          children: [
            SvgPicture.asset(
              asset,
              colorFilter: ColorFilter.mode(
                color,
                BlendMode.srcIn,
              ),
              width: 8.w,
              height: 8.w,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                height: 0.5,
                color: color,
                letterSpacing: -0.4,
              ),
            )
          ],
        ),
      ),
    );
  }
}
