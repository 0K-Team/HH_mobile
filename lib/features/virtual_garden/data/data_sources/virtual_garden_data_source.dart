import 'package:dio/dio.dart';
import 'package:eco_hero_mobile/features/virtual_garden/data/models/virtual_garden_model.dart';
import 'package:flutter/foundation.dart';

class VirtualGardenDataSource {
  // ignore: unused_field
  final Dio _dio;

  VirtualGardenDataSource(this._dio);

  Future<VirtualGardenModel?> fetchVirtualGarden(String user) async {
    //fixme remove
    user = '781823040534480';
    Response response = await _dio.get('https://ecohero.q1000q.me/api/v1/garden/user/$user');

    if (response.statusCode == 200) {
      if (kDebugMode) {
        print('Response: ${response.data}');
      }
      return VirtualGardenModel.fromJson(response.data);
    }

    //fixme impl
    return Future.value(
      VirtualGardenModel(
        id: 'id',
        user: 'user',
        plants: [
          VirtualGardenModelPlant(
            plantId: '1',
            name: 'Banan',
            type: 'banana',
            growthStage: 4,
            wateringNeeded: 4,
            fertilizerNeeded: 2,
            planted: DateTime.now(),
            harvestable: false,
            lastWatered: DateTime.timestamp(),
            lastFertilized: DateTime.timestamp(),
            weedsRemovedNeeded: 2,
          ),
          VirtualGardenModelPlant(
            plantId: '2',
            name: 'Rozchodnik Morgana',
            type: 'sedum-morganianum',
            growthStage: 2,
            wateringNeeded: 1,
            fertilizerNeeded: 0,
            weedsRemovedNeeded: 2,
            planted: DateTime.now(),
            harvestable: false,
            lastWatered: DateTime.timestamp(),
            lastFertilized: DateTime.timestamp(),
          ),
        ],
        userActions: VirtualGardenModelUserActions(
          wateringCount: 1,
          wateringMaxCount: 2,
          wateringRefill: DateTime.timestamp(),
          fertilizingCount: 3,
          fertilizingMaxCount: 4,
          fertilizingRefill: DateTime.timestamp(),
          weedsRemoved: 5,
          weedsMaxRemoved: 6,
          weedsRefill: DateTime.timestamp(),
        ),
      ),
    );
  }
}
