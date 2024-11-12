import 'package:eco_hero_mobile/features/maps/data/data_sources/location_data_source.dart';
import 'package:eco_hero_mobile/features/maps/data/models/location_model.dart';
import 'package:eco_hero_mobile/features/maps/domain/repositories/location_repository.dart';
import 'package:either_dart/either.dart';

class LocationRepositoryImpl extends LocationRepository {
  final LocationDataSource _source;

  LocationRepositoryImpl(this._source);

  @override
  Future<Either<List<LocationModel>, Exception>> fetchLocations() async {
    List<LocationModel>? locations = await _source.fetchLocations();
    if (locations == null) {
      return Right(Exception('Error fetching locations'));
    }

    return Left(locations);
  }
}
