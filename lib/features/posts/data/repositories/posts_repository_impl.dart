import 'package:eco_hero_mobile/features/posts/data/data_sources/posts_data_source.dart';
import 'package:eco_hero_mobile/features/posts/data/models/post_model.dart';
import 'package:eco_hero_mobile/features/posts/domain/repositories/posts_repository.dart';
import 'package:eco_hero_mobile/features/user/data/models/user_model.dart';
import 'package:either_dart/either.dart';

class PostsRepositoryImpl extends PostsRepository {
  // ignore: unused_field
  final PostsDataSource _source;

  PostsRepositoryImpl(this._source);

  @override
  Future<Either<PostModel, Exception>> createPost(PostModel post) async {
    PostModel? createdPost = await _source.createPost(post);
    if (createdPost == null) {
      return Right(Exception('Error creating post'));
    }

    return Left(createdPost);
  }

  @override
  Future<Either<PostModel, Exception>> fetchPost(int id) {
    // TODO: implement fetchPost
    throw UnimplementedError();
  }

  @override
  Future<Either<List<PostModel>, Exception>> fetchPosts(int page) async {
    List<PostModel>? posts = await _source.fetchPosts(page);
    if (posts == null) {
      return Right(Exception('Error fetching posts'));
    }

    return Left(posts);
  }

  @override
  Future<PostModel> updatePost(int id, PostModel newPost) {
    // TODO: implement updatePost
    throw UnimplementedError();
  }

  @override
  Future<Either<List<PostModel>, Either>> fetchUserPosts(UserModel user) {
    // TODO: implement fetchUserPosts
    throw UnimplementedError();
  }

}