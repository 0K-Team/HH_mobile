import 'package:cached_network_image/cached_network_image.dart';
import 'package:eco_hero_mobile/common/injection/dependency_injection.dart';
import 'package:eco_hero_mobile/common/util/color_util.dart';
import 'package:eco_hero_mobile/features/posts/data/models/post_model.dart';
import 'package:eco_hero_mobile/features/user/data/repositories/user_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PostWidget extends StatelessWidget {
  final PostModel post;

  const PostWidget({
    super.key,
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 1.h),
      width: 92.w,
      decoration: BoxDecoration(
        color: element,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FutureBuilder(
              future: get<UserRepositoryImpl>().fetchUser(post.author),
              builder: (context, snapshot) {
                if (snapshot.data == null) {
                  return CircularProgressIndicator();
                }

                return snapshot.data!.fold(
                  (user) => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () => context.push('/user/page', extra: user),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 18.sp,
                              backgroundImage:
                                  CachedNetworkImageProvider(user.avatar),
                            ),
                            SizedBox(width: 2.5.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  user.fullName.full,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 17.sp,
                                    height: 1,
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
                      if (post.createdAt != null)
                        Text(DateFormat('EEEE, HH:mm').format(post.createdAt!)),
                    ],
                  ),
                  (exception) => Text(
                    exception.toString(),
                  ),
                );
              }),
          SizedBox(height: 0.75.h),
          Wrap(
            spacing: 10.sp,
            runSpacing: 10.sp,
            children: post.tags
                .map(
                  (tag) => Text(
                    '#$tag',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      height: 1,
                      color: accent,
                    ),
                  ),
                )
                .toList(),
          ),
          Text(
            post.content,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          Wrap(
            children: post.images
                .map(
                  (image) => CachedNetworkImage(
                    imageUrl: image,
                    height: 10.h,
                    width: 40.w,
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
