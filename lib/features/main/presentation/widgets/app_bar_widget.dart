import 'package:cached_network_image/cached_network_image.dart';
import 'package:eco_hero_mobile/features/user/data/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AppBarWidget extends StatelessWidget {
  final UserModel user;

  const AppBarWidget({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => context.push('/user/page/configuration', extra: user),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: CachedNetworkImageProvider(user.avatar),
                ),
                SizedBox(width: 2.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      user.fullName.full,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 17.sp,
                        height: 1.1,
                      ),
                    ),
                    if (user.title != null)
                      Text(
                        user.title!,
                        style: TextStyle(
                          height: 1,
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () => context.push('/notifications/page', extra: user),
            child: Stack(
              children: [
                SvgPicture.asset('assets/notification.svg'),
                if (user.notifications.isNotEmpty)
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                    padding: EdgeInsets.all(8.sp),
                    child: Text(
                      user.notifications.length.toString(),
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        height: 0.7,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
