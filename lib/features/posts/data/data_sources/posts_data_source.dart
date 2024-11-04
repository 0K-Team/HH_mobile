import 'package:dio/dio.dart';
import 'package:eco_hero_mobile/features/posts/data/models/post_model.dart';

class PostsDataSource {
  final Dio _dio;

  PostsDataSource(this._dio);

  Future<List<PostModel>?> fetchPosts(int page, {String? user}) async {
    try {
      final String url =
          'https://ecohero.q1000q.me/api/v1/posts?page=$page&limit=10';
      final response = await _dio.get(url, queryParameters: {
        'user': user
      });
      if (response.statusCode == 200) {
        List<dynamic> json = response.data['data'];
        return json.map((dynamic) => PostModel.fromJson(dynamic)).toList();
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }

  Future<PostModel?> createPost(PostModel post) async {
    try {
      final String url = 'https://ecohero.q1000q.me/api/v1/posts';
      final response = await _dio.post(url, data: post.toJson());
      if (response.statusCode == 200) {
        return PostModel.fromJson(response.data);
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }

  Future<PostModel?> likePost(PostModel post) async {
    try {
      final String url = 'https://ecohero.q1000q.me/api/v1/posts/like/${post.id}';
      final response = await _dio.post(url);
      if (response.statusCode == 200) {
        return PostModel.fromJson(response.data);
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }

  Future<PostModel?> dislikePost(PostModel post) async {
    try {
      final String url = 'https://ecohero.q1000q.me/api/v1/posts/like/${post.id}';
      final response = await _dio.delete(url);
      if (response.statusCode == 200) {
        return PostModel.fromJson(response.data);
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }
}
