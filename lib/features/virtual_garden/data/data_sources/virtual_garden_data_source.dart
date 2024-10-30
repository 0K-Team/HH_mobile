import 'package:dio/dio.dart';
import 'package:eco_hero_mobile/features/virtual_garden/data/models/virtual_garden_model.dart';

class VirtualGardenDataSource {
  // ignore: unused_field
  final Dio _dio;

  VirtualGardenDataSource(this._dio);

  Future<VirtualGardenModel?> fetchVirtualGarden(String email) {
    //fixme impl
    return Future.value(
      VirtualGardenModel(
        plants: [
          VirtualGardenModelPlants(
            plantId: 1,
            type: 'Typ',
            species: 'Species',
            growthStage: 1,
            plantedDate: DateTime.now(),
            pointsEarned: 12,
          ),
        ],
      ),
    );
  }
}
