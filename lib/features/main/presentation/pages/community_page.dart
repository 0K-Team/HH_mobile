import 'package:eco_hero_mobile/common/util/color_util.dart';
import 'package:eco_hero_mobile/features/main/presentation/widgets/app_bar_widget.dart';
import 'package:eco_hero_mobile/features/main/presentation/widgets/navigation_bar_widget.dart';
import 'package:eco_hero_mobile/features/user/data/models/user_model.dart';
import 'package:eco_hero_mobile/features/user/presentation/blocs/current_user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

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
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 4.w),
                          child: Text(
                            'Posty użytkowników',
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
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
