part of 'posts_bloc.dart';

sealed class PostsEvent extends Equatable {
  const PostsEvent();

  @override
  List<Object?> get props => [];
}

final class PostsLoaded extends PostsEvent {
  final List<PostModel> posts;

  const PostsLoaded(this.posts);

  @override
  List<Object?> get props => [posts];
}

final class PostsFetched extends PostsEvent {
  final int page;

  const PostsFetched({this.page = 1});

  @override
  List<Object?> get props => [page];
}
