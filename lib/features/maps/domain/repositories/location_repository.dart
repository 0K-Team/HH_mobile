import 'package:eco_hero_mobile/features/maps/data/models/location_model.dart';
import 'package:either_dart/either.dart';

abstract class LocationRepository {

  Future<Either<List<LocationModel>, Exception>> fetchLocations();
}