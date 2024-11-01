import 'package:cached_network_image/cached_network_image.dart';
import 'package:eco_hero_mobile/features/blogs/data/models/blog_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BlogPage extends StatelessWidget {
  final BlogModel blog;

  const BlogPage({
    super.key,
    required this.blog,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: 100.w,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: BackButton(),
                ),
                SizedBox(height: 0.5.h),
                Padding(
                  padding: EdgeInsets.all(10.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 92.w,
                        child: Text(
                          blog.title,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20.sp,
                            height: 1,
                          ),
                        ),
                      ),
                      Text(blog.author),
                    ],
                  ),
                ),
                SizedBox(height: 0.5.h),
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: CachedNetworkImage(
                        imageUrl: blog.image,
                        width: 92.w,
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
                  ],
                ),
                SizedBox(height: 0.5.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: MarkdownBody(data: blog.content),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
