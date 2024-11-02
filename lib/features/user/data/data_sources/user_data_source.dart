import 'package:dio/dio.dart';
import 'package:eco_hero_mobile/features/user/data/models/user_model.dart';

class UserDataSource {
  // ignore: unused_field fixme
  final Dio _dio;

  UserDataSource(this._dio);

  Future<UserModel?> fetchUser(String id) async {
    try {
      final String url = 'https://ecohero.q1000q.me/api/v1/user/$id';
      final response = await _dio.get(url);
      if (response.statusCode == 200) {
        return UserModel.fromJson(response.data);
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }
}
