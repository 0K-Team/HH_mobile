import 'package:eco_hero_mobile/features/quizzes/data/models/quiz_topic_model.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class QuizTopicWidget extends StatelessWidget {
  final QuizTopicModel topic;

  const QuizTopicWidget({
    super.key,
    required this.topic,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          topic.type.asset,
          width: 10.w,
          height: 10.w,
        ),
        Text(
          topic.type.localized,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          topic.topic,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14.sp,
            height: 1,
          ),
        ),
      ],
    );
  }
}
