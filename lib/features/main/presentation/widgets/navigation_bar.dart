import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NavigationBarWidget extends StatelessWidget {
  const NavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                child: Image.asset(
                  'assets/avatar.png',
                ),
              ),
              SizedBox(width: 2.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Jerzy Niewierzy', style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 17.sp,
                  ),),
                  Text('Super ekolog'),
                ],
              ),
            ],
          ),
          SvgPicture.asset('assets/notification.svg'),
        ],
      ),
    );
  }
}
