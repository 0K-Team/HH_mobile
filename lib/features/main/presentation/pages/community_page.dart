import 'package:eco_hero_mobile/common/injection/dependency_injection.dart';
import 'package:eco_hero_mobile/common/util/color_util.dart';
import 'package:eco_hero_mobile/common/util/snackbar.dart';
import 'package:eco_hero_mobile/features/main/presentation/widgets/app_bar_widget.dart';
import 'package:eco_hero_mobile/features/main/presentation/widgets/navigation_bar_widget.dart';
import 'package:eco_hero_mobile/features/posts/data/models/post_model.dart';
import 'package:eco_hero_mobile/features/posts/data/repositories/posts_repository_impl.dart';
import 'package:eco_hero_mobile/features/posts/presentation/blocs/posts_bloc.dart';
import 'package:eco_hero_mobile/features/posts/presentation/widgets/post_widget.dart';
import 'package:eco_hero_mobile/features/user/data/models/user_model.dart';
import 'package:eco_hero_mobile/features/user/presentation/blocs/current_user.dart';
import 'package:eco_hero_mobile/features/user/presentation/blocs/current_user_bloc.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CommunityPage extends StatefulWidget {
  const CommunityPage({super.key});

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBarWidget(),
      body: SafeArea(
        child: BlocBuilder<CurrentUserBloc, CurrentUserState>(
            builder: (context, state) {
          if (state is CurrentUserLoadSuccess) {
            UserModel user = state.user;
            return RefreshIndicator(
              onRefresh: () async => get<PostsBloc>().add(PostsFetched()),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 1.h),
                    AppBarWidget(user: user),
                    SizedBox(height: 0.5.h),
                    Divider(color: shadow),
                    SizedBox(height: 2.5.h),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: accent,
                          width: 4.sp,
                        ),
                      ),
                      width: 92.w,
                      height: 10.h,
                      child: Row(
                        children: [
                          SizedBox(width: 2.5.w),
                          SizedBox(
                            width: 80.w,
                            child: TextField(
                              controller: _controller,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Ekologia au! Napisz co sądzisz',
                                hintStyle: TextStyle(
                                  color: shadow,
                                  fontSize: 17.sp,
                                ),
                              ),
                              style: TextStyle(
                                fontSize: 17.sp,
                              ),
                              onSubmitted: (_) => sendMessage(),
                              maxLines: 5,
                            ),
                          ),
                          GestureDetector(
                            behavior: HitTestBehavior.opaque,
                            onTap: sendMessage,
                            child: Icon(
                              Icons.send,
                              color: accent,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 1.h),
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
                    BlocBuilder<PostsBloc, PostsState>(
                        builder: (context, state) {
                      if (state is PostsLoadSuccess) {
                        return SizedBox(
                          width: 92.w,
                          child: ListView.builder(
                            itemBuilder: (context, index) {
                              PostModel post = state.posts[index];
                              return PostWidget(post: post);
                            },
                            itemCount: state.posts.length,
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                          ),
                        );
                      }

                      return CircularProgressIndicator();
                    }),
                  ],
                ),
              ),
            );
          }

          return Container();
        }),
      ),
    );
  }

  sendMessage() {
    if (user != null) {
      String text = _controller.text;
      if (text.isEmpty) {
        error('Tekst postu nie może być pusty!');
        return;
      }

      _controller.clear();
      PostsBloc bloc = get();
      get<PostsRepositoryImpl>()
          .createPost(
        PostModel(
          id: '',
          author: user!.id,
          content: text,
          likes: [],
          tags: [],
          images: [],
        ),
      )
          .fold((post) {
        success('Wysłano post!');
        bloc.add(PostsLoaded([
          post,
        ]));
      }, (_) {});
    }
  }
}
