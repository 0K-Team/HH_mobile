import 'package:eco_hero_mobile/features/posts/data/models/post_model.dart';
import 'package:either_dart/either.dart';

abstract class PostsRepository {
  Future<Either<List<PostModel>, Exception>> fetchPosts(int page);

  Future<Either<PostModel, Exception>> fetchPost(int id);

  Future<bool> createPost(PostModel post);

  Future<PostModel> updatePost(int id, PostModel newPost);
}