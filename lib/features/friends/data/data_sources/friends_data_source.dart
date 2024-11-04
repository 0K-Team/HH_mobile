import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class FriendsDataSource {
  final Dio _dio;

  FriendsDataSource(this._dio);

  Future<void> fetchFriends() async {
    Response response = await _dio.get('https://ecohero.q1000q.me/api/v1/me');
    if (kDebugMode) {
      print('Response: ${response.data}');
    }
  }
}