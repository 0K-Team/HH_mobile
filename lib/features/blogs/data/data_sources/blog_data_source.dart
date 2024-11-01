import 'package:dio/dio.dart';
import 'package:eco_hero_mobile/features/blogs/data/models/blog_model.dart';

class BlogDataSource {
  final Dio _dio;

  BlogDataSource(this._dio);

  Future<List<BlogModel>?> fetchBlogs() async {
    try {
      final String url = 'https://ecohero.q1000q.me/api/v1/blogs';
      final response = await _dio.get(url);
      if (response.statusCode == 200) {
        List<dynamic> json = response.data;
        return json.map((dynamic) => BlogModel.fromJson(dynamic)).toList();
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }
}
