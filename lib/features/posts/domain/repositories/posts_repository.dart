import 'package:eco_hero_mobile/features/posts/data/models/post_model.dart';
import 'package:eco_hero_mobile/features/user/data/models/user_model.dart';
import 'package:either_dart/either.dart';

abstract class PostsRepository {
  Future<Either<List<PostModel>, Exception>> fetchPosts(int page);

  Future<Either<PostModel, Exception>> fetchPost(int id);

  Future<Either<PostModel, Exception>> createPost(PostModel post);

  Future<PostModel> updatePost(int id, PostModel newPost);

  Future<Either<List<PostModel>, Exception>> fetchUserPosts(UserModel user);

  Future<Either<PostModel, Exception>> likePost(PostModel post);

  Future<Either<PostModel, Exception>> dislikePost(PostModel post);
}