import 'package:eco_hero_mobile/common/injection/dependency_injection.dart';
import 'package:eco_hero_mobile/common/util/color_util.dart';
import 'package:eco_hero_mobile/features/quizzes/data/models/quiz_topic_model.dart';
import 'package:eco_hero_mobile/features/quizzes/data/repositories/quizzes_repository_impl.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class QuizTopicWidget extends StatelessWidget {
  final QuizTopicModel topic;

  const QuizTopicWidget({
    super.key,
    required this.topic,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await get<QuizzesRepositoryImpl>().fetchQuiz(topic).fold((quiz) {
          context.push('/quiz/page', extra: quiz);
        }, (exception) {});
      },
      child: Container(
        decoration: BoxDecoration(
          color: element,
          borderRadius: BorderRadius.circular(8),
        ),
        width: 45.w,
        padding: EdgeInsets.symmetric(
          vertical: 1.h,
          horizontal: 2.w,
        ),
        child: Column(
          children: [
            Image.asset(
              topic.type.asset,
              width: 20.w,
              height: 15.w,
              fit: BoxFit.cover,
            ),
            Text(
              topic.type.localized,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              topic.topic,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14.sp,
                height: 1,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
