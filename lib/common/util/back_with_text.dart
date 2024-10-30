import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BackWithText extends StatelessWidget {
  final String title;
  final Widget? ending;

  const BackWithText({
    super.key,
    required this.title, this.ending,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            BackButton(),
            Text(
              title,
              style: TextStyle(
                fontSize: 19.sp,
                fontWeight: FontWeight.w600,
              ),
            ),

          ],
        ),
        if (ending != null)
          ending!
      ],
    );
  }
}
