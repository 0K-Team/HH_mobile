import 'package:eco_hero_mobile/common/util/color_util.dart';
import 'package:eco_hero_mobile/features/blogs/data/models/blog_model.dart';
import 'package:eco_hero_mobile/features/main/presentation/widgets/button_widget.dart';
import 'package:eco_hero_mobile/features/main/presentation/widgets/element_widget.dart';
import 'package:eco_hero_mobile/features/main/presentation/widgets/navigation_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<BlogModel> blogs = [
      BlogModel(
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREFfl0s0KCGxfX3stJbCBco51DqIDLFhkCrw&s',
        title: 'Czy można używać mniej wody podczas gotowania?',
        author: 'Karol > Oskar',
      ),
      BlogModel(
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-VBvRNOKXb2tw-VeA5sN5hJ83EDgsx-MVdw&s',
        title: 'ąęąś∂ńŌ∑d',
        author: 'lol',
      ),
      BlogModel(
        image:
            'https://thumbor.forbes.com/thumbor/fit-in/x/https://www.forbes.com/home-improvement/wp-content/uploads/2022/07/featured-image-kitchen-layouts.jpg',
        title: 'Coś innego',
        author: 'siajds',
      ),
    ];

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 0.5.h),
            NavigationBarWidget(),
            SizedBox(height: 0.5.h),
            Divider(color: shadow),
            SizedBox(height: 2.5.h),
            ElementWidget(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dzienne\nwyzwanie',
                        style: TextStyle(
                          fontSize: 23.sp,
                          height: 0.8,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 1.h),
                      Text('Posegreguj 15 odpadów'),
                      SizedBox(height: 0.5.h),
                      Image.asset('assets/avatars.png'),
                    ],
                  ),
                  Image.asset('assets/recycle_bin.png'),
                ],
              ),
            ),
            SizedBox(height: 1.5.h),
            ElementWidget(
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
                width: 96.w,
                height: 12.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: blogs.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    BlogModel blog = blogs[index];
                    return Container(
                      margin: EdgeInsets.only(right: 4.w),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              blog.image,
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
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
