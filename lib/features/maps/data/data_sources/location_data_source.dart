import 'package:dio/dio.dart';
import 'package:eco_hero_mobile/features/maps/data/models/location_model.dart';

class LocationDataSource {
  final Dio _dio;

  LocationDataSource(this._dio);

  Future<List<LocationModel>?> fetchLocations() async {
    Response response =
        await _dio.get('https://ecohero.q1000q.me/api/v1/locations');
    if (response.statusCode == 200) {
      List<dynamic> list = response.data;
      return list.map((dynamic) => LocationModel.fromJson(dynamic)).toList();
    }

    return null;
  }
}
