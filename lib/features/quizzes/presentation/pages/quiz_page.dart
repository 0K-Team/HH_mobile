import 'package:eco_hero_mobile/common/util/back_with_text.dart';
import 'package:eco_hero_mobile/features/quizzes/data/models/quiz_model.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class QuizPage extends StatelessWidget {
  final QuizModel quiz;

  const QuizPage({
    super.key,
    required this.quiz,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              BackWithText(title: 'Podgląd quizu'),
              Text(
                quiz.type.localized,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(quiz.topic),
              ...quiz.questions.map(
                (question) => Container(
                  width: 92.w,
                  margin: EdgeInsets.symmetric(vertical: 1.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        question.question,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 17.sp,
                          height: 1,
                        ),
                      ),
                      SizedBox(height: 0.25.h),
                      Text(
                        'A. ${question.answers.A}',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.5.sp,
                        ),
                      ),
                      Text(
                        'B. ${question.answers.B}',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.5.sp,
                        ),
                      ),
                      Text(
                        'C. ${question.answers.C}',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.5.sp,
                        ),
                      ),
                      Text(
                        'D. ${question.answers.D}',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.5.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
