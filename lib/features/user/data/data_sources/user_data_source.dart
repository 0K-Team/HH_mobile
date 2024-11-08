import 'dart:developer';

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
    try {
      Response response = await _dio
          .patch('https://ecohero.q1000q.me/api/v1/user/me/firstName', data: {
        'firstName': firstName,
      });
      if (response.statusCode == 200) {
        return UserModel.fromJson(response.data);
      }
    } catch (_) {}

    return null;
  }

  Future<UserModel?> updateLastName(String lastName) async {
    try {
      Response response = await _dio
          .patch('https://ecohero.q1000q.me/api/v1/user/me/lastName', data: {
        'lastName': lastName,
      });
      if (response.statusCode == 200) {
        return UserModel.fromJson(response.data);
      }
    } catch (_) {}

    return null;
  }

  Future<UserModel?> updateBio(String bio) async {
    try {
      Response response = await _dio
          .patch('https://ecohero.q1000q.me/api/v1/user/me/bio', data: {
        'bio': bio,
      });
      if (response.statusCode == 200) {
        return UserModel.fromJson(response.data);
      }
    } catch (_) {}

    return null;
  }

  Future<UserModel?> updateLocation(String location) async {
    try {
      Response response = await _dio
          .patch('https://ecohero.q1000q.me/api/v1/user/me/location', data: {
        'location': location,
      });
      if (response.statusCode == 200) {
        return UserModel.fromJson(response.data);
      }
    } catch (_) {}

    return null;
  }

  Future<UserModel?> addPreferredTopic(String topic) async {
    try {
      Response response = await _dio.post(
          'https://ecohero.q1000q.me/api/v1/user/me/preferredTopics/$topic');
      if (response.statusCode == 200) {
        return UserModel.fromJson(response.data);
      }
    } catch (_) {}

    return null;
  }

  Future<UserModel?> removePreferredTopic(String topic) async {
    try {
      Response response = await _dio.delete(
          'https://ecohero.q1000q.me/api/v1/user/me/preferredTopics/$topic');
      if (response.statusCode == 200) {
        return UserModel.fromJson(response.data);
      }
    } catch (_) {}

    return null;
  }

  Future<UserModel?> updateTitle(String title) async {
    try {
      Response response = await _dio
          .patch('https://ecohero.q1000q.me/api/v1/user/me/title', data: {
        'title': title,
      });
      if (response.statusCode == 200) {
        return UserModel.fromJson(response.data);
      }
    } catch (_) {
    }

    return null;
  }
}
