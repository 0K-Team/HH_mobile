import 'package:eco_hero_mobile/common/util/color_util.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PrimaryButtonWidget extends StatelessWidget {
  final String? title;
  final Widget? content;
  final Function()? onTap;

  const PrimaryButtonWidget({
    super.key,
    this.title,
    this.content,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: accent,
          borderRadius: BorderRadius.circular(8),
        ),
        width: 85.w,
        padding: EdgeInsets.symmetric(vertical: 1.25.h),
        child: Center(
          child: content ??
              (title != null
                  ? Text(
                      title!,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 17.sp,
                        color: element,
                      ),
                    )
                  : null),
        ),
      ),
    );
  }
}

class SecondaryButtonWidget extends StatelessWidget {
  final String? title;
  final Widget? content;
  final Function()? onTap;

  const SecondaryButtonWidget({
    super.key,
    this.title,
    this.content,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: element,
          borderRadius: BorderRadius.circular(8),
        ),
        width: 85.w,
        padding: EdgeInsets.symmetric(vertical: 1.25.h),
        child: Center(
          child: content ??
              (title != null
                  ? Text(
                      title!,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 17.sp,
                        color: Colors.white,
                      ),
                    )
                  : null),
        ),
      ),
    );
  }
}
