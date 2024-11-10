import 'package:cached_network_image/cached_network_image.dart';
import 'package:eco_hero_mobile/common/injection/dependency_injection.dart';
import 'package:eco_hero_mobile/common/util/color_util.dart';
import 'package:eco_hero_mobile/features/posts/data/models/post_model.dart';
import 'package:eco_hero_mobile/features/posts/data/repositories/posts_repository_impl.dart';
import 'package:eco_hero_mobile/features/posts/presentation/blocs/posts_bloc.dart';
import 'package:eco_hero_mobile/features/user/data/repositories/user_repository_impl.dart';
import 'package:eco_hero_mobile/features/user/presentation/blocs/current_user.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PostWidget extends StatefulWidget {
  final PostModel post;

  const PostWidget({
    super.key,
    required this.post,
  });

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  late PostModel post;
  late bool isLiked;

  @override
  void initState() {
    post = widget.post;
    isLiked = widget.post.likes.contains(currentUser?.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () => addLike(),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 1.h),
        width: 92.w,
        decoration: BoxDecoration(
          color: element,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FutureBuilder(
                future: get<UserRepositoryImpl>().fetchUser(post.author),
                builder: (context, snapshot) {
                  if (snapshot.data == null) {
                    return CircularProgressIndicator();
                  }

                  return snapshot.data!.fold(
                    (user) => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: () => context.push('/user/page', extra: user),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 18.sp,
                                backgroundImage:
                                    CachedNetworkImageProvider(user.avatar),
                              ),
                              SizedBox(width: 2.5.w),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    user.fullName.full,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17.sp,
                                      height: 1,
                                    ),
                                  ),
                                  if (user.title != null)
                                    Text(
                                      user.title!,
                                      style: TextStyle(
                                        height: 1,
                                      ),
                                    ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        if (post.createdAt != null)
                          Text(DateFormat('EEEE, HH:mm')
                              .format(post.createdAt!)),
                      ],
                    ),
                    (exception) => Text(
                      exception.toString(),
                    ),
                  );
                }),
            SizedBox(height: 0.75.h),
            Wrap(
              spacing: 10.sp,
              runSpacing: 10.sp,
              children: post.tags
                  .map(
                    (tag) => Text(
                      '#$tag',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        height: 1,
                        color: accent,
                      ),
                    ),
                  )
                  .toList(),
            ),
            Text(
              post.content,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            Wrap(
              children: post.images
                  .map(
                    (image) => CachedNetworkImage(
                      imageUrl: image,
                      height: 10.h,
                      width: 40.w,
                    ),
                  )
                  .toList(),
            ),
            SizedBox(height: 0.5.h),
            GestureDetector(
              onTap: () {
                if (isLiked) {
                  removeLike();
                } else {
                  addLike();
                }
              },
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/heart.svg',
                    colorFilter: ColorFilter.mode(
                      isLiked ? accent : Colors.grey,
                      BlendMode.srcIn,
                    ),
                    height: 2.5.h,
                    width: 2.5.h,
                  ),
                  SizedBox(width: 0.5.w),
                  Text(
                    post.likes.length.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 18.sp,
                      height: 1,
                      color: isLiked ? accent : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  addLike() async {
    await get<PostsRepositoryImpl>().likePost(post).fold((post) {
      setState(() {
        isLiked = true;
        this.post = post;
      });

      updatePostsBloc(post);
    }, (exception) {});
  }

  removeLike() async {
    await get<PostsRepositoryImpl>().dislikePost(post).fold((post) {
      setState(() {
        isLiked = false;
        this.post = post;
      });

      updatePostsBloc(post);
    }, (exception) {});
  }

  void updatePostsBloc(PostModel post) {
    PostsBloc bloc = get();
    if (bloc.state is PostsLoadSuccess) {
      PostsLoadSuccess state = bloc.state as PostsLoadSuccess;
      List<PostModel> posts = state.posts;
      int index = posts.indexWhere((p) => p.id == widget.post.id);
      if (index != -1) {
        posts[index] = post;
        bloc.add(PostsLoaded(posts));
      }
    }
  }
}
