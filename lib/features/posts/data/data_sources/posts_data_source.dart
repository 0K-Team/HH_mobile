import 'package:dio/dio.dart';
import 'package:eco_hero_mobile/features/posts/data/models/post_model.dart';

class PostsDataSource {
  final Dio _dio;

  PostsDataSource(this._dio);

  Future<List<PostModel>?> fetchPosts(int page) async {
    try {
      final String url = 'https://ecohero.q1000q.me/api/v1/posts?page=$page&limit=10';
      final response = await _dio.get(url);
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

}