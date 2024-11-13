import 'package:eco_hero_mobile/common/injection/dependency_injection.dart';
import 'package:eco_hero_mobile/common/util/button.dart';
import 'package:eco_hero_mobile/common/util/color_util.dart';
import 'package:eco_hero_mobile/features/main/presentation/widgets/app_bar_widget.dart';
import 'package:eco_hero_mobile/features/main/presentation/widgets/navigation_bar_widget.dart';
import 'package:eco_hero_mobile/features/quizzes/data/data_sources/quizzes_data_source.dart';
import 'package:eco_hero_mobile/features/quizzes/presentation/widgets/quizzes_list_widget.dart';
import 'package:eco_hero_mobile/features/user/data/models/user_model.dart';
import 'package:eco_hero_mobile/features/user/presentation/blocs/current_user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBarWidget(),
      body: SafeArea(
        child: BlocBuilder<CurrentUserBloc, CurrentUserState>(
            builder: (context, state) {
              if (state is CurrentUserLoadSuccess) {
                UserModel user = state.user;
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 1.h),
                      AppBarWidget(user: user),
                      SizedBox(height: 0.5.h),
                      Divider(color: shadow),
                      SizedBox(height: 2.5.h),
                      QuizzesListWidget(),
                    ],
                  ),
                );
              }

              return Container();
            }),
      ),
    );

  }
}
