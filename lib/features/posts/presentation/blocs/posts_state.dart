part of 'posts_bloc.dart';

sealed class PostsState extends Equatable {
  const PostsState();

  @override
  List<Object> get props => [];
}

final class PostsInitial extends PostsState {}

final class PostsLoadSuccess extends PostsState {
  final List<PostModel> posts;

  const PostsLoadSuccess(this.posts);

  @override
  List<Object> get props => [posts];
}

final class PostsLoadError extends PostsState {
  final Exception exception;

  const PostsLoadError(this.exception);

  @override
  List<Object> get props => [exception];
}
