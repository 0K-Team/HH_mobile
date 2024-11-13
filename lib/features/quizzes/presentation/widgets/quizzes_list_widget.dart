import 'package:eco_hero_mobile/common/util/color_util.dart';
import 'package:eco_hero_mobile/features/quizzes/data/models/quiz_model.dart';
import 'package:eco_hero_mobile/features/quizzes/presentation/blocs/current_quiz_bloc.dart';
import 'package:eco_hero_mobile/features/quizzes/presentation/blocs/quizzes_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
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

      List<QuizModel> quizzes = state.quizzes;
      Map<String, List<QuizModel>> map = _groupQuizzesByCategory(quizzes);

      return BlocBuilder<CurrentQuizBloc, CurrentQuizState>(
          builder: (context, state) {
        if (state is! CurrentQuizLoadSuccess) {
          return CircularProgressIndicator();
        }

        int currentQuestion = state.currentQuestion;
        return SizedBox(
          width: 94.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...map.entries.map((entry) {
                int index = map.keys.toList().indexOf(entry.key) + 1;

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildCategoryHeader(entry.key, index),
                    _buildQuizRow(
                        context, entry, index, currentQuestion, quizzes),
                    SizedBox(height: 2.5.h),
                  ],
                );
              }),
            ],
          ),
        );
      });
    });
  }

  Map<String, List<QuizModel>> _groupQuizzesByCategory(
      List<QuizModel> quizzes) {
    Map<String, List<QuizModel>> map = {};
    for (QuizModel model in quizzes) {
      map.update(model.category, (list) => list..add(model),
          ifAbsent: () => [model]);
    }
    return map;
  }

  Widget _buildCategoryHeader(String category, int index) {
    return Container(
      decoration: BoxDecoration(
        color: getColor(category),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.symmetric(vertical: 0.5.h, horizontal: 2.w),
      height: 10.h,
      width: 94.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          getAsset(category),
          SizedBox(width: 8.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'SEKCJA $index: $category',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.sp),
              ),
              Text(
                getDescription(category),
                style: TextStyle(
                    fontSize: 16.sp, fontWeight: FontWeight.w400, height: 1),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildQuizRow(
      BuildContext context,
      MapEntry<String, List<QuizModel>> entry,
      int index,
      int currentQuestion,
      List<QuizModel> quizzes) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: index % 2 == 0
          ? [
              _buildQuizIcons(context, entry, currentQuestion, quizzes),
              buildAssetImage(),
            ]
          : [
              buildAssetImage(),
              _buildQuizIcons(context, entry, currentQuestion, quizzes),
            ],
    );
  }

  Image buildAssetImage() {
    return Image.asset(
      'assets/blue-male-standing.png',
      height: 18.h,
      width: 20.w,
      fit: BoxFit.cover,
    );
  }

  Widget _buildQuizIcons(
      BuildContext context,
      MapEntry<String, List<QuizModel>> entry,
      int currentQuestion,
      List<QuizModel> quizzes) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: entry.value.asMap().entries.map((entry) {
        int smallIndex = entry.key;
        int bigIndex = quizzes.indexOf(entry.value);
        print('Current: $bigIndex -- $currentQuestion');
        return GestureDetector(
          onTap: () => context.push('/quiz/page', extra: entry.value),
          child: Container(
            margin: smallIndex % 2 == 0
                ? EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.w)
                : EdgeInsets.only(
                    left: 18.w, right: 2.w, top: 1.h, bottom: 1.h),
            width: 6.h,
            height: 6.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: currentQuestion < bigIndex ? element : getColor(entry.value.category),
            ),
            child: Icon(
              Icons.star,
              size: 20.sp,
              color: Colors.white,
            ),
          ),
        );
      }).toList(),
    );
  }

  Color getColor(String category) {
    switch (category.toLowerCase()) {
      case 'rainforest':
        return Color(0xFF39BC44);
      case 'ocean':
        return Color(0xFF4A9DFD);
      default:
        return Colors.black;
    }
  }

  Image getAsset(String category) {
    switch (category.toLowerCase()) {
      case 'rainforest':
        return Image.asset('assets/rainforest.png');
      case 'ocean':
        return Image.asset('assets/ocean.png');
      default:
        return Image.asset('assets/ocean.png');
    }
  }

  String getDescription(String category) {
    switch (category.toLowerCase()) {
      case 'rainforest':
        return 'Deszcze płaczące';
      case 'ocean':
        return 'Oceany i takie tam';
      default:
        return '';
    }
  }
}
