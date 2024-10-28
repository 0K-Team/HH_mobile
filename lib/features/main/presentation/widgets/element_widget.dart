import 'package:eco_hero_mobile/common/util/color_util.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ElementWidget extends StatelessWidget {
  final Widget child;

  const ElementWidget({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.w),
      padding: EdgeInsets.symmetric(vertical: 2.h),
      decoration: BoxDecoration(
        color: element,
        borderRadius: BorderRadius.circular(8),
      ),
      child: child,
    );
  }
}
