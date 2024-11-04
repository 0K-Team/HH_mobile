import 'package:dio/dio.dart';

class FriendsDataSource {
  final Dio _dio;

  FriendsDataSource(this._dio);

  Future<void> fetchFriends() async {
    Response response = await _dio.get('https://ecohero.q1000q.me/api/v1/me');
    print('Response: ${response.data}');
  }
}