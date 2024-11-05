import 'package:dio/dio.dart';
import 'package:eco_hero_mobile/features/user/data/models/user_model.dart';
import 'package:flutter/foundation.dart';

class FriendsDataSource {
  final Dio _dio;

  FriendsDataSource(this._dio);

  Future<void> fetchFriends() async {
    Response response = await _dio.get('https://ecohero.q1000q.me/api/v1/user/friends/me');
    if (kDebugMode) {
      print('Response: ${response.data}');
    }
  }

  Future<void> fetchFriendRequests() async {
    Response response = await _dio.get('https://ecohero.q1000q.me/api/v1/user/friends/requests/me');
    if (kDebugMode) {
      print('Response: ${response.data}');
    }
  }

  Future<bool> sendFriendRequest(UserModel user) async {
    Response response = await _dio.post('https://ecohero.q1000q.me/api/v1/user/friends/requests/me/${user.id}');
    if (response.statusCode == 200) {
      return true;
    }

    return false;
  }
}