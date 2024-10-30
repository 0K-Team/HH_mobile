import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BackWithText extends StatelessWidget {
  final String title;

  const BackWithText({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
