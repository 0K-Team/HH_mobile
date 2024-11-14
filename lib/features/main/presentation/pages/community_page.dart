import 'package:eco_hero_mobile/common/injection/dependency_injection.dart';
import 'package:eco_hero_mobile/common/util/color_util.dart';
import 'package:eco_hero_mobile/common/util/extensions/bloc_extension.dart';
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
  final TextEditingController _textController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  bool _loading = false;

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
              child: Center(
                child: ListView(
                  controller: _scrollController,
                  children: [
                    SizedBox(height: 1.h),
                    AppBarWidget(user: user),
                    SizedBox(height: 0.5.h),
                    Divider(color: shadow),
                    SizedBox(
                      width: 92.w,
                      child: Column(
                        children: [
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
                                    controller: _textController,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText:
                                          'Ekologia au! Napisz co sądzisz',
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
                                child: CommunityPostsWidget(posts: state.posts),
                              );
                            }

                            return CircularProgressIndicator();
                          }),
                        ],
                      ),
                    ),
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
    if (currentUser != null) {
      String text = _textController.text.trim();
      if (text.isEmpty) {
        error('Tekst postu nie może być pusty!');
        return;
      }

      _textController.clear();
      PostsBloc bloc = get();
      get<PostsRepositoryImpl>()
          .createPost(
        PostModel(
          id: '',
          author: currentUser!.id,
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

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    bool isBottom = _scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent;
    if (isBottom) {
      PostsBloc bloc = get();
      _loading = true;
      if (bloc.state is PostsLoadSuccess) {
        PostsLoadSuccess state = bloc.state as PostsLoadSuccess;
        int left = state.posts.length % 25;
        if (left != 0) {
          _loading = false;
          return;
        }

        int page = state.posts.length ~/ 25 + 1;
        bloc.addAndWait(PostsFetched(page: page)).then((_) {
          _loading = false;
        });
      }
    }
  }
}

class CommunityPostsWidget extends StatefulWidget {
  final List<PostModel> posts;

  const CommunityPostsWidget({
    super.key,
    required this.posts,
  });

  @override
  State<CommunityPostsWidget> createState() => _CommunityPostsWidgetState();
}

class _CommunityPostsWidgetState extends State<CommunityPostsWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        PostModel post = widget.posts[index];
        return Container(
          key: UniqueKey(),
          child: PostWidget(post: post),
        );
      },
      itemCount: widget.posts.length,
      physics: NeverScrollableScrollPhysics(),
    );
  }
}
