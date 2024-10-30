import 'package:eco_hero_mobile/features/virtual_garden/data/models/virtual_garden_model.dart';
import 'package:either_dart/either.dart';

abstract class VirtualGardenRepository {

  Future<Either<VirtualGardenModel, Exception>> fetchVirtualGarden(String email);
}