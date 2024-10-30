import 'package:eco_hero_mobile/common/util/back_with_text.dart';
import 'package:eco_hero_mobile/common/util/color_util.dart';
import 'package:eco_hero_mobile/features/user/data/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class UserPage extends StatelessWidget {
  final UserModel user;

  const UserPage({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            BackWithText(title: 'Profil ${user.fullName}'),
            SizedBox(height: 0.5.h),
            CircleAvatar(
              radius: 40.sp,
              backgroundImage: NetworkImage(user.avatar),
            ),
            SizedBox(height: 1.5.h),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 4.w),
                child: Text(
                  'Opis użytkownika',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            SizedBox(height: 0.5.h),
            Container(
              width: 92.w,
              decoration: BoxDecoration(
                color: element,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.w),
              child: Text(
                user.bio,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 17.sp,
                ),
              ),
            ),
            SizedBox(height: 1.5.h),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 4.w),
                child: Text(
                  'Moja lokalizacja',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            SizedBox(height: 0.5.h),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 4.w),
                child: Text(
                  'Preferowane tematy',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: element,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.all(14.sp),
              width: 92.w,
              child: Wrap(
                spacing: 12.sp,
                runSpacing: 10.sp,
                children: user.preferredTopics
                    .map(
                      (topic) => Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: secondary,
                            width: 4.sp,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: EdgeInsets.all(10.sp),
                        child: Text(
                          topic,
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
