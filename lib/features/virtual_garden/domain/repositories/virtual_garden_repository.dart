import 'package:eco_hero_mobile/features/virtual_garden/data/models/plant_model.dart';
import 'package:eco_hero_mobile/features/virtual_garden/data/models/virtual_garden_model.dart';
import 'package:either_dart/either.dart';

abstract class VirtualGardenRepository {

  Future<Either<VirtualGardenModel, Exception>> fetchVirtualGarden(String user);

  Future<Either<PlantModel, Exception>> fetchPlant(String type);

  Future<Either<VirtualGardenModel, Exception>> sellPlant(String id);

  Future<Either<VirtualGardenModel, Exception>> collectPlant(String id);

  Future<Either<VirtualGardenModel, Exception>> waterPlant(String id);

  Future<Either<VirtualGardenModel, Exception>> fertilizePlant(String id);

  Future<Either<VirtualGardenModel, Exception>> removeWeedsInPlant(String id);

}