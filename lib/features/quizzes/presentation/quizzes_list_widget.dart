import 'package:eco_hero_mobile/common/injection/dependency_injection.dart';
import 'package:eco_hero_mobile/features/quizzes/data/models/quiz_topic_model.dart';
import 'package:eco_hero_mobile/features/quizzes/data/repositories/quizzes_repository_impl.dart';
import 'package:eco_hero_mobile/features/quizzes/presentation/quiz_topic_widget.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class QuizzesListWidget extends StatelessWidget {
  const QuizzesListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: get<QuizzesRepositoryImpl>().fetchQuizTopics(),
      builder: (BuildContext context,
          AsyncSnapshot<Either<List<QuizTopicModel>, Exception>> snapshot) {
        if (snapshot.data == null) {
          return CircularProgressIndicator();
        }

        return snapshot.data!.fold(
          (topics) => Wrap(
            spacing: 10.sp,
            runSpacing: 10.sp,
            alignment: WrapAlignment.center,
            children: [
              ...topics.map(
                (topic) => QuizTopicWidget(
                  topic: topic,
                ),
              ),
            ],
          ),
          (exception) => Text(
            exception.toString(),
          ),
        );
      },
    );
  }
}
