import 'package:eco_hero_mobile/features/quizzes/presentation/blocs/quizzes_bloc.dart';
import 'package:eco_hero_mobile/features/quizzes/presentation/widgets/quiz_topic_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class QuizzesListWidget extends StatelessWidget {
  const QuizzesListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuizzesBloc, QuizzesState>(builder: (context, state) {
      if (state is QuizzesLoadError) {
        return Text(state.exception.toString());
      }

      if (state is! QuizzesLoadSuccess) {
        return CircularProgressIndicator();
      }

      return Wrap(
        spacing: 10.sp,
        runSpacing: 10.sp,
        alignment: WrapAlignment.center,
        children: [
          ...state.topics.map(
                (topic) => QuizTopicWidget(
              topic: topic,
            ),
          ),
        ],
      );
    });
  }
}
