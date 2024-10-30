import 'package:eco_hero_mobile/common/util/back_with_text.dart';
import 'package:eco_hero_mobile/common/util/button.dart';
import 'package:eco_hero_mobile/common/util/color_util.dart';
import 'package:eco_hero_mobile/features/daily_challenge/data/models/user_daily_challenge_model.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DailyChallengePage extends StatelessWidget {
  final UserDailyChallengeModel dailyChallenge;

  const DailyChallengePage({
    super.key,
    required this.dailyChallenge,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BackWithText(title: dailyChallenge.title),
            Column(
              children: [
                Text(
                  '${(dailyChallenge.done / dailyChallenge.amount * 100).round()}% zrobione',
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w700,
                    color: secondary,
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      width: 25.h,
                      height: 25.h,
                      decoration: ShapeDecoration(
                        color: element,
                        shape: OvalBorder(),
                      ),
                    ),
                    Positioned.fill(
                      child: SizedBox(
                        child: Image.asset(
                          'assets/recycle_bin.png',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 1.h),
                Text(
                  'Posegregowałeś ${dailyChallenge.done} na ${dailyChallenge.amount} odpadów',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 2.h),
              child: PrimaryButtonWidget(title: 'Segreguj dalej'),
            ),
          ],
        ),
      ),
    );
  }
}
