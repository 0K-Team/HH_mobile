import 'package:eco_hero_mobile/features/virtual_garden/data/data_sources/virtual_garden_data_source.dart';
import 'package:eco_hero_mobile/features/virtual_garden/data/models/virtual_garden_model.dart';
import 'package:eco_hero_mobile/features/virtual_garden/domain/repositories/virtual_garden_repository.dart';
import 'package:either_dart/either.dart';

class VirtualGardenRepositoryImpl extends VirtualGardenRepository {
  final VirtualGardenDataSource _source;

  VirtualGardenRepositoryImpl(this._source);

  @override
  Future<Either<VirtualGardenModel, Exception>> fetchVirtualGarden(String user) async {
    VirtualGardenModel? virtualGarden = await _source.fetchVirtualGarden(user);
    if (virtualGarden == null) {
      return Right(Exception('Error fetching virtual garden.'));
    }

    return Left(virtualGarden);
  }

}