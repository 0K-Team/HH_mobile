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
            Row(
              children: [
                BackButton(),
                Text(
                  dailyChallenge.title,
                  style: TextStyle(
                    fontSize: 19.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
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
            Container(
              decoration: BoxDecoration(
                color: secondary,
                borderRadius: BorderRadius.circular(8),
              ),
              width: 85.w,
              padding: EdgeInsets.symmetric(vertical: 1.h),
              margin: EdgeInsets.symmetric(vertical: 2.h),
              child: Center(
                child: Text(
                  'Segreguj dalej',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                    color: element,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
