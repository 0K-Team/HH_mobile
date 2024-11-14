import 'package:eco_hero_mobile/features/virtual_garden/data/data_sources/virtual_garden_data_source.dart';
import 'package:eco_hero_mobile/features/virtual_garden/data/models/plant_model.dart';
import 'package:eco_hero_mobile/features/virtual_garden/data/models/virtual_garden_model.dart';
import 'package:eco_hero_mobile/features/virtual_garden/domain/repositories/virtual_garden_repository.dart';
import 'package:either_dart/either.dart';

class VirtualGardenRepositoryImpl extends VirtualGardenRepository {
  final VirtualGardenDataSource _source;

  VirtualGardenRepositoryImpl(this._source);

  @override
  Future<Either<VirtualGardenModel, Exception>> fetchVirtualGarden(
      String user) async {
    VirtualGardenModel? virtualGarden = await _source.fetchVirtualGarden(user);
    if (virtualGarden == null) {
      return Right(Exception('Error fetching virtual garden.'));
    }

    return Left(virtualGarden);
  }

  @override
  Future<Either<PlantModel, Exception>> fetchPlant(String type) async {
    List<PlantModel>? plants = await _source.fetchPlants();
    if (plants == null) {
      return Right(Exception('Error fetching plants'));
    }

    PlantModel? plant = plants.where((self) => self.type == type).singleOrNull;
    if (plant == null) {
      return Right(Exception('Error getting plant'));
    }

    return Left(plant);
  }

  @override
  Future<Either<VirtualGardenModel, Exception>> fertilizePlant(String id) {
    // TODO: implement fertilizePlant
    throw UnimplementedError();
  }

  @override
  Future<Either<VirtualGardenModel, Exception>> removedWeedsInPlant(String id) {
    // TODO: implement removedWeedsInPlant
    throw UnimplementedError();
  }

  @override
  Future<Either<VirtualGardenModel, Exception>> sellPlant(String id) {
    // TODO: implement sellPlant
    throw UnimplementedError();
  }

  @override
  Future<Either<VirtualGardenModel, Exception>> waterPlant(String id) {
    // TODO: implement waterPlant
    throw UnimplementedError();
  }

  @override
  Future<Either<VirtualGardenModel, Exception>> collectPlant(String id) {
    // TODO: implement collectPlant
    throw UnimplementedError();
  }
}
