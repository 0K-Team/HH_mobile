import 'package:dio/dio.dart';
import 'package:eco_hero_mobile/features/user/data/models/preferred_topic.dart';

class PreferredTopicsDataSource {
  final Dio _dio;

  PreferredTopicsDataSource(this._dio);

  Future<List<PreferredTopic>?> fetchPreferredTopics() async {
    Response response =
        await _dio.get('https://ecohero.q1000q.me/api/v1/preferredTopics');
    if (response.statusCode == 200) {
      return (response.data as List<dynamic>)
          .map((dynamic) => PreferredTopic.fromJson(dynamic))
          .toList();
    }

    return null;
  }
}
