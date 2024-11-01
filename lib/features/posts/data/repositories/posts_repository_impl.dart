import 'package:eco_hero_mobile/features/posts/data/data_sources/posts_data_source.dart';
import 'package:eco_hero_mobile/features/posts/data/models/post_model.dart';
import 'package:eco_hero_mobile/features/posts/domain/repositories/posts_repository.dart';
import 'package:either_dart/either.dart';

class PostsRepositoryImpl extends PostsRepository {
  final PostsDataSource _source;

  PostsRepositoryImpl(this._source);

  @override
  Future<bool> createPost(PostModel post) {
    // TODO: implement createPost
    throw UnimplementedError();
  }

  @override
  Future<Either<PostModel, Exception>> fetchPost(int id) {
    // TODO: implement fetchPost
    throw UnimplementedError();
  }

  @override
  Future<Either<List<PostModel>, Exception>> fetchPosts(int page) {
    // TODO: implement fetchPosts
    throw UnimplementedError();
  }

  @override
  Future<PostModel> updatePost(int id, PostModel newPost) {
    // TODO: implement updatePost
    throw UnimplementedError();
  }

}