import 'package:cached_network_image/cached_network_image.dart';
import 'package:eco_hero_mobile/common/injection/dependency_injection.dart';
import 'package:eco_hero_mobile/common/util/color_util.dart';
import 'package:eco_hero_mobile/features/blogs/data/models/blog_model.dart';
import 'package:eco_hero_mobile/features/blogs/data/repositories/blog_repository_impl.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BlogsCarouselWidget extends StatelessWidget {
  const BlogsCarouselWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Either<List<BlogModel>, Exception>>(
        future: get<BlogRepositoryImpl>().fetchBlogs(),
        builder: (context, snapshot) {
          if (snapshot.data == null || snapshot.data!.isRight) {
            return Container(
              width: 60.w,
              height: 12.h,
              decoration: BoxDecoration(
                color: element,
                borderRadius: BorderRadius.circular(8),
              ),
            );
          }

          List<BlogModel> blogs = snapshot.data!.left;
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: blogs.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              BlogModel blog = blogs[index];
              return GestureDetector(
                onTap: () => context.push('/blog/page', extra: blog),
                child: Container(
                  margin: EdgeInsets.only(right: 4.w),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: CachedNetworkImage(
                          imageUrl: blog.image,
                          width: 60.w,
                          height: 12.h,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned.fill(
                        child: Container(
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1, 1),
                              end: Alignment(-1, -1),
                              colors: [
                                Color(0x00D9D9D9),
                                Color(0xFF2F2F2F),
                              ],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.sp),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 45.w,
                              child: Text(
                                blog.title,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.sp,
                                  height: 1,
                                ),
                              ),
                            ),
                            Text(blog.author),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        });
  }
}
