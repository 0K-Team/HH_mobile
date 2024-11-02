import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:eco_hero_mobile/features/posts/data/models/post_model.dart';
import 'package:eco_hero_mobile/features/posts/data/repositories/posts_repository_impl.dart';
import 'package:either_dart/either.dart';
import 'package:equatable/equatable.dart';

part 'posts_event.dart';

part 'posts_state.dart';

class PostsBloc extends Bloc<PostsEvent, PostsState> {
  final PostsRepositoryImpl _repository;

  PostsBloc(this._repository) : super(PostsInitial()) {
    on<PostsLoaded>(_onPostsLoaded);
    on<PostsFetched>(_onPostsFetched);
  }

  FutureOr<void> _onPostsLoaded(PostsLoaded event, Emitter<PostsState> emit) {
    List<PostModel> posts = event.posts;
    if (state is PostsLoadSuccess) {
      posts.addAll((state as PostsLoadSuccess).posts);
    }

    final uniquePosts = posts
        .fold<Map<String, PostModel>>({}, (map, post) {
          map[post.id] = post;
          return map;
        })
        .values
        .toList();
    emit(PostsLoadSuccess(uniquePosts));
  }

  Future<void> _onPostsFetched(
      PostsFetched event, Emitter<PostsState> emit) async {
    await _repository.fetchPosts(1).fold(
        (posts) => emit(PostsLoadSuccess(posts)),
        (exception) => emit(PostsLoadError(exception)));
  }
}
