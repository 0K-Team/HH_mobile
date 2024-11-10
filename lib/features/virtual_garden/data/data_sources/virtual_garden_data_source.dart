import 'package:dio/dio.dart';
import 'package:eco_hero_mobile/features/virtual_garden/data/models/virtual_garden_model.dart';
import 'package:flutter/foundation.dart';

class VirtualGardenDataSource {
  // ignore: unused_field
  final Dio _dio;

  VirtualGardenDataSource(this._dio);

  Future<VirtualGardenModel?> fetchVirtualGarden(String user) async {
    Response response = await _dio.get('https://ecohero.q1000q.me/api/v1/garden/user/$user');
    if (response.statusCode == 200) {
      if (kDebugMode) {
        print('Response: ${response.data}');
      }
      return VirtualGardenModel.fromJson(response.data);
    }

    return null;
  }
}
