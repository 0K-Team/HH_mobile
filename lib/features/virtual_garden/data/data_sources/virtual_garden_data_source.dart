import 'package:dio/dio.dart';
import 'package:eco_hero_mobile/features/virtual_garden/data/models/plant_model.dart';
import 'package:eco_hero_mobile/features/virtual_garden/data/models/virtual_garden_model.dart';
import 'package:flutter/foundation.dart';

class VirtualGardenDataSource {
  // ignore: unused_field
  final Dio _dio;
  List<PlantModel>? _plants;

  VirtualGardenDataSource(this._dio);

  Future<VirtualGardenModel?> fetchVirtualGarden(String user) async {
    Response response =
        await _dio.get('https://ecohero.q1000q.me/api/v1/garden/user/$user');
    if (response.statusCode == 200) {
      if (kDebugMode) {
        print('Response: ${response.data}');
      }
      return VirtualGardenModel.fromJson(response.data);
    }

    return null;
  }

  Future<List<PlantModel>?> fetchPlants() async {
    if (_plants != null) {
      return _plants;
    }

    Response response =
        await _dio.get('https://ecohero.q1000q.me/api/v1/garden/plants');
    if (response.statusCode == 200) {
      List<dynamic> list = response.data;
      final plants =
          list.map((dynamic) => PlantModel.fromJson(dynamic)).toList();
      _plants = plants;
      return plants;
    }

    return null;
  }

  Future<VirtualGardenModel?> sellPlant(String id) async {
    Response response =
        await _dio.post('https://ecohero.q1000q.me/api/v1/garden/me/sell/$id');
    if (response.statusCode == 200) {
      return VirtualGardenModel.fromJson(response.data);
    }

    return null;
  }

  Future<VirtualGardenModel?> waterPlant(String id) async {
    Response response = await _dio.post(
        'https://ecohero.q1000q.me/api/v1/garden/me/action/$id',
        data: {"action": "water"});
    if (response.statusCode == 200) {
      return VirtualGardenModel.fromJson(response.data);
    }

    return null;
  }

  Future<VirtualGardenModel?> collectPlant(String id) async {
    Response response = await _dio.post(
        'https://ecohero.q1000q.me/api/v1/garden/me/action/$id',
        data: {"action": "collect"});
    if (response.statusCode == 200) {
      return VirtualGardenModel.fromJson(response.data);
    }

    return null;
  }

  Future<VirtualGardenModel?> fertilizePlant(String id) async {
    Response response = await _dio.post(
        'https://ecohero.q1000q.me/api/v1/garden/me/action/$id',
        data: {"action": "fertilizer"});
    if (response.statusCode == 200) {
      return VirtualGardenModel.fromJson(response.data);
    }

    return null;
  }

  Future<VirtualGardenModel?> removedWeedsInPlant(String id) async {
    Response response = await _dio.post(
        'https://ecohero.q1000q.me/api/v1/garden/me/action/$id',
        data: {"action": "weeds"});
    if (response.statusCode == 200) {
      return VirtualGardenModel.fromJson(response.data);
    }

    return null;
  }
}
