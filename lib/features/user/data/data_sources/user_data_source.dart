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

  Future<UserModel?> updateFirstName(String firstName) async {
    Response response = await _dio
        .patch('https://ecohero.q1000q.me/api/v1/user/me/firstName', data: {
      'firstName': firstName,
    });
    if (response.statusCode == 200) {
      return UserModel.fromJson(response.data);
    }

    return null;
  }
}
